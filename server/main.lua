local playerProps = {}
local custom = require('custom_emotes')

AnimationList = {
    Walks = require('data.animations.walks'),
    Scenarios = require('data.animations.scenarios'),
    Expressions = require('data.animations.expressions'),
    Emotes = require('data.animations.emotes'),
    PropEmotes = require('data.animations.prop_emotes'),
    ConsumableEmotes = require('data.animations.consumable_emotes'),
    DanceEmotes = require('data.animations.dance_emotes'),
    SynchronizedEmotes = require('data.animations.synchronized_emotes'),
    AnimalEmotes = require('data.animations.animal_emotes')
}

-- Import customs animations
for _type, emoteList in pairs(custom) do
    for i = 1, #emoteList do
        AnimationList[_type][#AnimationList[_type] + 1] = emoteList[i]
    end
end

local function CheckMenuVersion()
    PerformHttpRequest('https://raw.githubusercontent.com/scullyy/scully_emotemenu/master/version.txt', function(err, text, headers)
        local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')

        if not text then
            lib.print.error('Currently unable to run a version check.')
            return
        end

        lib.print.info(('Current Version: %s'):format(currentVersion))
        lib.print.info(('Latest Version: %s'):format(text))

        if text == currentVersion then
            lib.print.info('You are running the latest version.')
        else
            lib.print.error(('You are currently running an outdated version, please update to version %s'):format(text))
        end
    end)
end

local function dumpPropsToFile()
    if not Config.EnablePropDump then return end

    local propDump = {}

    for _, emoteList in pairs(AnimationList) do
        for i = 1, #emoteList do
            local emote = emoteList[i]

            if emote.Options and emote.Options.Props then
                local propCount = #emote.Options.Props

                if propCount > 0 then
                    for k = 1, propCount do
                        local prop = emote.Options.Props[k]

                        if not lib.table.contains(propDump, prop.Name) then
                            propDump[#propDump + 1] = prop.Name
                        end
                    end
                end
            end
        end
    end

    table.sort(propDump)

    local contents = 'return {\n'

    for i = 1, #propDump do
        contents = contents .. '\t[`' .. tostring(propDump[i]) .. '`] = true,\n'
    end

    contents = contents .. '}'

    local success = SaveResourceFile(GetCurrentResourceName(), 'prop_dump.lua', contents, -1)

    if success then
        lib.print.info('Prop dump created.')
    else
        lib.print.error('Could not save prop_dump.lua file.')
    end
end

local function deleteProps(source, props)
    for i = 1, #props do
        local prop = props[i]

        if DoesEntityExist(prop) then
            DeleteEntity(prop)
        end
    end

    playerProps[source] = nil
end

AddEventHandler('playerDropped', function(reason)
    local src = source
    local props = playerProps[src]

    if props then
        deleteProps(src, props)
    end
end)

RegisterNetEvent('scully_emotemenu:deleteProps', function(otherPlayer)
    local src = source
    local props = playerProps[src]

    if props then
        deleteProps(src, props)
    end

    if otherPlayer then
        TriggerClientEvent('scully_emotemenu:cancelSynchronizedEmote', otherPlayer)
    end
end)

lib.callback.register('scully_emotemenu:spawnProps', function(source, props)
    local ped = GetPlayerPed(source)
    local coords = GetEntityCoords(ped)
    local returnList = {}
    local returnAmt = 0

    local playerProp = playerProps[source] or {}

    if next(playerProp) then
        deleteProps(source, playerProp)
        table.wipe(playerProp)
    end

    for i = 1, #props do
        local prop = props[i]
        local object = CreateObject(prop.hash, coords.x, coords.y, coords.z, true)

        local entityExsist = lib.waitFor(function()
            if DoesEntityExist(object) then
                return true
            end
        end, ('Failed to spawn prop %s'):format(prop.hash), 2000)

        if entityExsist then
            local netObject = NetworkGetNetworkIdFromEntity(object)

            if prop.hasPTFX then Player(source).state:set('ptfxPropNet', netObject, true) end

            SetEntityIgnoreRequestControlFilter(object, true)

            returnAmt += 1
            playerProp[returnAmt] = object

            returnList[returnAmt] = {
                object = netObject,
                bone = prop.bone,
                placement = prop.placement,
                variant = prop.variant
            }
        end
    end

    playerProps[source] = playerProp

    return returnList
end)

RegisterNetEvent('scully_emotemenu:requestSynchronizedEmote', function(target, senderData, targetData)
    local src = source

    if senderData.SkipRequest then
        local senderPed, targetPed = GetPlayerPed(src), GetPlayerPed(target)
        local distance = #(GetEntityCoords(senderPed) - GetEntityCoords(targetPed))

        if distance < 5 then
            TriggerClientEvent('scully_emotemenu:targetStartSynchronizedEmote', target, src, senderData, targetData)
            TriggerClientEvent('scully_emotemenu:senderStartSynchronizedEmote', src, target, senderData)
        end

        return
    end

    TriggerClientEvent('scully_emotemenu:synchronizedEmoteRequest', target, src, senderData, targetData)
end)

RegisterNetEvent('scully_emotemenu:synchronizedEmoteResponse', function(sender, senderData, targetData)
    local src = source
    local senderPed, targetPed = GetPlayerPed(sender), GetPlayerPed(src)
    local distance = #(GetEntityCoords(senderPed) - GetEntityCoords(targetPed))

    if distance < 5 then
        TriggerClientEvent('scully_emotemenu:targetStartSynchronizedEmote', src, sender, senderData, targetData)
        TriggerClientEvent('scully_emotemenu:senderStartSynchronizedEmote', sender, src, senderData)
    end
end)

RegisterNetEvent('scully_emotemenu:syncPtfx', function(asset, name, placement, bone, color)
    if (type(asset) ~= 'string') or (type(name) ~= 'string') or (type(placement) ~= 'table') then
        lib.print.error('Invalid arguments for PTFX.')
        return
    end

    local src = source
    local playerState = Player(src).state

    playerState:set('ptfxAsset', asset, true)
    playerState:set('ptfxName', name, true)
    playerState:set('ptfxOffset', placement[1], true)
    playerState:set('ptfxRot', placement[2], true)
    playerState:set('ptfxScale', placement[3], true)
    playerState:set('ptfxBone', bone, true)
    playerState:set('ptfxColor', color, true)
    playerState:set('ptfxPropNet', false, true)
    playerState:set('ptfx', false, true)
end)

CheckMenuVersion()
dumpPropsToFile()
