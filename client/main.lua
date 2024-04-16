local gameBuild, currentWalk, currentExpression = GetGameBuildNumber(), GetResourceKvpString('animations_walkstyle') or 'default', GetResourceKvpString('animations_expression') or 'default'
local emoteBinds, isActionsLimited, isPlayingAnimation = json.decode(GetResourceKvpString('animations_binds')) or {}, false, false
local isRagdoll, isPointing, returnStance = false, false, false
local emoteCooldown, lastEmote, lastVariant, ptfxCanHold, otherPlayer, clone = 0, nil, nil, false, nil, nil
local playerParticles, keybinds, registeredEmotes, cloneProps = {}, {}, {}, {}
local lang = require('locales.' .. Config.Language)
local pedTypes = require('data.ped_types')

-- Menu Options
local mainMenuOptions, emoteMenuOptions, emoteMenuBindsOptions = {
    -- Main Menu
    {label = lang.search, description = lang.search_for_animation, icon = 'fa-solid fa-magnifying-glass', args = 'animations_search'},
    {label = lang.keybinds, description = lang.create_delete_binds, icon = 'fa-solid fa-keyboard', args = 'animations_emote_binds_menu'},
    {label = lang.emote_menu, description = lang.open_emote_menu, icon = 'fa-solid fa-person', args = 'animations_emote_menu'},
    {label = lang.walking_styles, icon = 'fa-solid fa-person-walking', values = {}, args = 'Walks', close = false},
    {label = lang.scenarios, icon = 'fa-solid fa-person-walking-with-cane', values = {}, args = 'Scenarios', close = false},
    {label = lang.facial_expressions, icon = 'fa-solid fa-face-angry', values = {}, args = 'Expressions', close = false},
    {label = lang.cancel, values = {{label = lang.emote, description = lang.cancel_your_emote}, {label = lang.walk_style, description = lang.reset_walk_style}, {label = lang.expression, description = lang.reset_your_expression}, {label = lang.all, description = lang.cancel_reset_everything}}, icon = 'fa-solid fa-ban', args = 'cancel', close = false}
}, {
    -- Emote Menu
    {label = lang.emotes, icon = 'fa-solid fa-person-walking', values = {}, args = 'Emotes', close = false},
    {label = lang.prop_emotes, icon = 'fa-solid fa-person-hiking', values = {}, args = 'PropEmotes', close = false},
    {label = lang.consumable_emotes, icon = 'fa-solid fa-pizza-slice', values = {}, args = 'ConsumableEmotes', close = false},
    {label = lang.dance_emotes, icon = 'fa-solid fa-person-running', values = {}, args = 'DanceEmotes', close = false},
    {label = lang.synced_emotes, icon = 'fa-solid fa-people-carry', values = {}, args = 'SynchronizedEmotes', close = false},
    {label = lang.animal_emotes, icon = 'fa-solid fa-dog', values = {}, args = 'AnimalEmotes', close = false}
}, {
    -- Emote Bind Menu
    {label = lang.none, description = lang.new_bind, icon = 'fa-solid fa-1', args = 'animations_create_bind'},
    {label = lang.none, description = lang.new_bind, icon = 'fa-solid fa-2', args = 'animations_create_bind'},
    {label = lang.none, description = lang.new_bind, icon = 'fa-solid fa-3', args = 'animations_create_bind'},
    {label = lang.none, description = lang.new_bind, icon = 'fa-solid fa-4', args = 'animations_create_bind'},
    {label = lang.none, description = lang.new_bind, icon = 'fa-solid fa-5', args = 'animations_create_bind'}
}

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

-- Functions
---Closes the animation menu
function closeMenu()
    local currentMenu = lib.getOpenMenu()
    if currentMenu ~= 'animations_main_menu' and currentMenu ~= 'animations_emote_menu' then return end

    lib.hideMenu()
end
exports('closeMenu', closeMenu)

---Toggles the animation menu
function toggleMenu()
    local currentMenu = lib.getOpenMenu()

    if not currentMenu then
        lib.showMenu('animations_main_menu')
    else
        closeMenu()
    end
end
exports('toggleMenu', toggleMenu)

---Opens list of emotes
---@param _type string
function listEmotes(_type)
    local emotes = AnimationList[_type]

    if not emotes then emotes = AnimationList.Emotes end

    local emoteCount, emoteTable = #emotes, {}

    for i = 1, emoteCount do
        local emote = emotes[i]

        if emote and emote.Label and emote.Command then
            emoteTable[#emoteTable + 1] = '- ' .. emote.Label .. ' - ' .. emote.Command
        end
    end

    local content = table.concat(emoteTable, '\n')

    lib.alertDialog({
        header = lang.emote_list,
        content = content,
        centered = true,
        size = 'lg',
        overflow = true,
        labels = {cancel = '', confirm = lang.close}
    })
end
exports('listEmotes', listEmotes)

---Toggle player limitations
---@param limited boolean
function setLimitation(limited)
    isActionsLimited = limited
end
exports('setLimitation', setLimitation)

---Check if the player is currently limited
---@return boolean
function isLimited()
    return isActionsLimited
end
exports('isLimited', isLimited)

---Remove multiple entries from a table
---@param _table table
---@param keep function
function removeFromTable(_table, keep)
    local _index = 1

    for i = 1, #_table do
        if keep(_table, i) then
            if i ~= _index then
                _table[_index] = _table[i]
                _table[i] = nil
            end
            _index += 1
        else
            _table[i] = nil
        end
    end

    return _table
end

---Display a notification
---@param _type string
---@param message string
function notify(_type, message)
    lib.notify({
        description = message,
        position = Config.NotificationPosition,
        duration = 2500,
        style = {
            backgroundColor = '#141517',
            color = '#d6d6d6'
        },
        icon = _type == 'error' and 'ban' or 'circle-exclamation',
        iconColor = _type == 'error' and '#D30000' or '#2ea4f7'
    })
end
exports('customNotifyFn', function(fn) if fn then notify = fn end end)

---Displays a text UI
---@param icon? string
---@param text string
function showHelpAlert(icon, text)
    lib.showTextUI(text, {
        position = Config.HelpAlertPosition,
        icon = icon,
        style = {
            borderRadius = 0,
            backgroundColor = '#141517',
            color = 'white'
        }
    })
end
exports('customHelpAlertFn', function(fn) if fn then showHelpAlert = fn end end)

---Register emotes to be used within external resources
---@param emote table
function registerEmote(emote)
    registeredEmotes[emote.Name] = emote
end
exports('registerEmote', registerEmote)

---Play a registered emote
---@param emote string
function playRegisteredEmote(emote)
    local registeredEmote = registeredEmotes[emote]

    if not registeredEmote then
        notify('error', lang.not_valid_registered_emote)
        return
    end

    if registeredEmote.Type == 'Walks' then
        setWalk(registeredEmote.Walk)
    else
        playEmote(registeredEmote, registeredEmote.Variant)
    end
end
exports('playRegisteredEmote', playRegisteredEmote)

---Remove emotes from the menu
---@param _type string
function removeEmotes(_type)
    local checkMenus = {
        'Walks',
        'Scenarios',
        'Expressions',
        'Emotes',
        'PropEmotes',
        'ConsumableEmotes',
        'DanceEmotes',
        'SynchronizedEmotes',
        'AnimalEmotes'
    }

    for i = 1, #checkMenus do
        AnimationList[checkMenus[i]] = removeFromTable(AnimationList[checkMenus[i]], function(_table, _index)
            return not _table[_index][_type]
        end)
    end
end

---Add emotes to the menu
---@param _type string
---@param command string
function addEmotesToMenu(_type, command)
    for option = 1, #mainMenuOptions do
        if mainMenuOptions[option].args == _type then
            for emote = 1, #AnimationList[_type] do
                local _emote = AnimationList[_type][emote]

                if _emote and _emote.Label and not _emote.Hide then
                    mainMenuOptions[option].values[#mainMenuOptions[option].values + 1] = {label = _emote.Label, description = ('%s %s'):format(command, _emote.Command)}
                end
            end

            break
        end
    end

    for option = 1, #emoteMenuOptions do
        if emoteMenuOptions[option].args == _type then
            for emote = 1, #AnimationList[_type] do
                local _emote = AnimationList[_type][emote]

                if _emote and _emote.Label and not _emote.Hide then
                    emoteMenuOptions[option].values[#emoteMenuOptions[option].values + 1] = {label = _emote.Label, description = ('%s %s'):format(command, _emote.Command)}
                end
            end

            break
        end
    end
end

---Add emotes to the radial menu
---@param _type string
---@param id string
---@param icon string
---@param cancel RadialItem
function addEmotesToRadial(_type, id, icon, cancel)
    local options = {{
        label = lang.emote_list,
        icon = 'list',
        onSelect = function()
            listEmotes(_type)
        end
    }, cancel}

    for i = 1, #AnimationList[_type] do
        local emote = AnimationList[_type][i]

        if emote and emote.Label and not emote.Hide then
            options[#options + 1] = {
                label = emote.Label,
                icon = icon,
                onSelect = function()
                    if isActionsLimited then return end

                    if _type == 'Walks' then
                        setWalk(emote.Walk)
                    else
                        playEmote(emote)
                    end
                end
            }
        end
    end

    lib.registerRadial({
        id = id,
        items = options
    })
end

---Get an emote based on the command
---@param name string
---@return string? _type Emote type
---@return table? _emote Emote table
function getEmoteByCommand(name)
    local _type, _emote, checkMenus = nil, nil, {
        'Walks',
        'Scenarios',
        'Expressions',
        'Emotes',
        'PropEmotes',
        'ConsumableEmotes',
        'DanceEmotes',
        'SynchronizedEmotes',
        'AnimalEmotes'
    }

    for i = 1, #checkMenus do
        local animType = checkMenus[i]
        local animList = AnimationList[animType]

        for emote = 1, #animList do
            if animList[emote] and (animList[emote].Command == name) then
                _type, _emote = animType, animList[emote]
                break
            end
        end
    end

    return _type, _emote
end

---Check if the player is in an animation
---@return boolean
function isInEmote()
    return isPlayingAnimation
end
exports('isInEmote', isInEmote)

---Get the last emote a player used
---@return table?, number?
function getLastEmote()
    return lastEmote, lastVariant
end
exports('getLastEmote', getLastEmote)

function requestSynchronizedEmote(senderData)
    local playerPos = GetEntityCoords(cache.ped)
    local targetId = lib.getClosestPlayer(playerPos, 3.0, false)

    if not targetId then
        notify('error', lang.no_player_nearby)
        return
    end

    local _type, emote = getEmoteByCommand(senderData.Options.Shared.OtherAnimation)

    if _type ~= 'SynchronizedEmotes' then
        notify('error', lang.not_valid_synced_emote)
        return
    end

    TriggerServerEvent('scully_emotemenu:requestSynchronizedEmote', GetPlayerServerId(targetId), senderData, emote)
end

---Play an emote by command
---@param command string
---@param variant? number
function playEmoteByCommand(command, variant)
    local _type, emote = getEmoteByCommand(command)

    if not _type or _type == 'Walks' then
        notify('error', lang.not_valid_emote)
        return
    end

    if _type == 'SynchronizedEmotes' then
        requestSynchronizedEmote(emote)
        return
    end

    playEmote(emote --[[@as table]], variant)
end
exports('playEmoteByCommand', playEmoteByCommand)

---Play an animation
---@param data table
---@param variation? number
function playEmote(data, variation)
    if data.PedTypes then
        if IsPedHuman(cache.ped) then
            notify('error', lang.not_valid_ped)
            return
        end

        local validPed = false
        local playerModel = GetEntityModel(cache.ped)

        for i = 1, #data.PedTypes do
            local allowedPeds = pedTypes[data.PedTypes[i]]
            local isContained = lib.table.contains(allowedPeds, playerModel)

            if isContained then
                validPed = true
                break
            end
        end

        if not validPed then
            notify('error', lang.not_valid_ped)
            return
        end
    end

    if not data.PedTypes and not IsPedHuman(cache.ped) then
        notify('error', lang.not_valid_ped)
        return
    end

    if data.Expression then
        setExpression(data.Expression)
        return
    end

    if Config.EnableWeaponBlock and IsPedArmed(cache.ped, 7) then
        notify('error', lang.not_with_weapon)
        return
    end

    if Config.EnableAimShootBlock then
        CreateThread(function()
            while isPlayingAnimation and not IsPedRagdoll(cache.ped) do
                Wait(0)

                DisableControlAction(0, 25, true)
                DisablePlayerFiring(cache.playerId, true)
            end

            cancelEmote(false)
        end)
    end

    local duration, movementFlag = nil, cache.vehicle and 51 or 0

    if not Config.AllowedInVehicles and cache.vehicle then
        notify('error', lang.no_animations_in_vehicle)
        return
    end

    local gameTimer = GetGameTimer()

    if (gameTimer - emoteCooldown) < Config.EmoteCooldown then return end

    emoteCooldown = gameTimer

    TriggerServerEvent('scully_emotemenu:deleteProps')

    if data.Scenario then
        if cache.vehicle then
            notify('error', lang.no_scenarios_in_vehicle)
            return
        end

        ClearPedTasks(cache.ped)
        TaskStartScenarioInPlace(cache.ped, data.Scenario, 0, true)

        isPlayingAnimation = true
        return
    end

    if Config.EnableEmotePlacement and data.Placement and not data.Advanced then
        lib.hideMenu()

        startPlacementThread(data)

        return
    end

    local hasAutomatedPtfx, dictionaryName, animationName = false, data.Dictionary, data.Animation

    if type(dictionaryName) == 'table' and type(animationName) == 'table' then
        local randomIndex = math.random(1, #animationName)

        dictionaryName = dictionaryName[randomIndex]
        animationName = animationName[randomIndex]
    end

    local isValid = lib.requestAnimDict(dictionaryName, 1000)

    if not isValid then
        notify('error', lang.not_valid_emote)
        return
    end

    if data.NSFW and type(Config.EnableNSFWEmotes) == 'string' and Config.EnableNSFWEmotes == 'limited' and not LocalPlayer.state.allowNSFWEmotes then
        notify('error', lang.nsfw_limited)
        return
    end

    if data.Options then
        duration = data.Options.Duration

        if data.Options.Delay then Wait(data.Options.Delay) end

        if not cache.vehicle and data.Options.Flags then
            movementFlag = data.Options.Flags.Stuck and 50 or data.Options.Flags.Move and 51 or data.Options.Flags.Loop and 1 or movementFlag
            if data.Options.Flags.Loop then
                lastEmote, lastVariant = data, variation
            end
        end

        if data.Options.Ptfx then
            hasAutomatedPtfx = Config.EnableAutoPtfx and data.Options.Ptfx.Auto
            ptfxCanHold = data.Options.Ptfx.CanHold

            if Config.PtfxKeybind and not hasAutomatedPtfx then
                keybinds.PlayPtfx:disable(false)
                notify('success', (lang.press_for_effect):format(GetControlInstructionalButton(0, joaat('+playptfx') | 0x80000000, true):sub(3)))
            else
                keybinds.PlayPtfx:disable(true)
            end

            TriggerServerEvent('scully_emotemenu:syncPtfx', data.Options.Ptfx.Asset, data.Options.Ptfx.Name, data.Options.Ptfx.Placement, data.Options.Ptfx.Bone, data.Options.Ptfx.Color)
        else
            if Config.PtfxKeybind then keybinds.PlayPtfx:disable(true) end
        end
    end

    if data.Advanced then
        local coords = data.Advanced.Coords

        TaskPlayAnimAdvanced(cache.ped, dictionaryName, animationName, coords.x, coords.y, coords.z, 0, 0, data.Advanced.Heading, 2.0, 2.0, duration or -1, movementFlag, 1.0, false, false)
    else
        TaskPlayAnim(cache.ped, dictionaryName, animationName, 2.0, 2.0, duration or -1, movementFlag, 0, false, false, false)
    end

    RemoveAnimDict(dictionaryName)

    isPlayingAnimation = true

    if data.Options then
        local secondaryEmote = data.Options.SecondaryEmote

        if secondaryEmote then
            local isSecondaryValid = lib.requestAnimDict(secondaryEmote.Dictionary, 1000)

            if not isSecondaryValid then
                notify('error', lang.not_valid_emote)
                return
            end

            TaskPlayAnim(cache.ped, secondaryEmote.Dictionary, secondaryEmote.Animation, 2.0, 2.0, secondaryEmote.Duration or -1, 51, 0, false, false, false)
            RemoveAnimDict(secondaryEmote.Dictionary)
        end

        local propData = data.Options.Props

        if propData then
            local propCount = #propData

            if propCount > 0 then
                Wait(duration or 0)

                local propList = {}

                for i = 1, propCount do
                    local prop = propData[i]
                    local variant = prop.Variant

                    if variation then
                        if prop.Variations and prop.Variations[variation] then
                            variant = prop.Variations[variation]
                        end
                    end

                    propList[#propList + 1] = {
                        hash = joaat(prop.Name),
                        bone = prop.Bone,
                        placement = prop.Placement,
                        variant = variant,
                        hasPTFX = i == 1 and data.Options.Ptfx and data.Options.Ptfx.AttachToProp
                    }
                end

                local props = lib.callback.await('scully_emotemenu:spawnProps', false, propList)

                if props then
                    for i = 1, #props do
                        local prop = props[i]
                        local object = NetworkGetEntityFromNetworkId(prop.object)

                        if DoesEntityExist(object) then
                            local hasControl = lib.waitFor(function()
                                local hasControl = NetworkGetEntityOwner(object) == cache.playerId

                                if hasControl then
                                    return true
                                end

                                NetworkRequestControlOfEntity(object)
                            end, ('Failed to gain entity control of entity'), 3000)


                            if hasControl then
                                addPropToPlayer(object, prop.bone, prop.placement, prop.variant)
                            end
                        end
                    end
                end
            end
        end
    end

    if hasAutomatedPtfx then
        Wait(400)

        LocalPlayer.state:set('ptfx', true, true)
    end
end
exports('playEmote', playEmote)

---Play an animation using a clone
---@param data table
function initCloneEmote(data)
    if DoesEntityExist(clone --[[@as number]]) then return end

    if cache.vehicle then
        notify('error', lang.no_animations_in_vehicle)
        return
    end

    local clonePos = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 4.5, 0.0)
    local cloneHeading = GetEntityHeading(cache.ped) + 180

    clone = ClonePed(cache.ped, false, false, true)

    SetEntityCoords(clone, clonePos.x, clonePos.y, clonePos.z, false, false, false, false)
    SetEntityHeading(clone, cloneHeading)
    SetEntityAlpha(clone, 200, false)

    Wait(200)

    local hasAutomatedPtfx, dictionaryName, animationName = false, data.Dictionary, data.Animation

    if type(dictionaryName) == 'table' and type(animationName) == 'table' then
        local randomIndex = math.random(1, #animationName)

        dictionaryName = dictionaryName[randomIndex]
        animationName = animationName[randomIndex]
    end

    local isValid = lib.requestAnimDict(dictionaryName, 1000)

    if not isValid then
        notify('error', lang.not_valid_emote)
        return
    end

    if data.Options then
        duration = data.Options.Duration

        if data.Options.Delay then Wait(data.Options.Delay) end

        if not cache.vehicle and data.Options.Flags then
            if data.Options.Flags.Loop then movementFlag = 1 end
            if data.Options.Flags.Move then movementFlag = 51 end
            if data.Options.Flags.Stuck then movementFlag = 50 end
        end

        if data.Options.Ptfx then
            -- TO-DO
        end
    end

    local cloneDuration = GetAnimDuration(dictionaryName, animationName)

    if data.Advanced then
        local coords = data.Advanced.Coords

        TaskPlayAnimAdvanced(clone, dictionaryName, animationName, coords.x, coords.y, coords.z, 0, 0, data.Advanced.Heading, 2.0, 2.0, duration or -1, movementFlag, 1.0, false, false)
    else
        TaskPlayAnim(clone, dictionaryName, animationName, 2.0, 2.0, duration or -1, movementFlag, 0, false, false, false)
    end

    RemoveAnimDict(dictionaryName)

    if data.Options then
        local secondaryEmote = data.Options.SecondaryEmote

        if secondaryEmote then
            local isSecondaryValid = lib.requestAnimDict(secondaryEmote.Dictionary, 1000)

            if not isSecondaryValid then
                notify('error', lang.not_valid_emote)
                return
            end

            TaskPlayAnim(clone, secondaryEmote.Dictionary, secondaryEmote.Animation, 2.0, 2.0, secondaryEmote.Duration or -1, 51, 0, false, false, false)
            RemoveAnimDict(secondaryEmote.Dictionary)
        end

        local propData = data.Options.Props

        if propData then
            local propCount = #propData

            if propCount > 0 then
                Wait(duration or 0)

                local propList = {}

                for i = 1, propCount do
                    local prop = propData[i]
                    local variant = prop.Variant

                    if variation then
                        if prop.Variations and prop.Variations[variation] then
                            variant = prop.Variations[variation]
                        end
                    end

                    propList[#propList + 1] = {
                        hash = joaat(prop.Name),
                        bone = prop.Bone,
                        placement = prop.Placement,
                        variant = variant
                    }
                end

                if #propList > 0 then
                    for i = 1, #propList do
                        local prop = propList[i]

                        lib.requestModel(prop.hash, 1000)

                        local object = CreateObject(prop.hash, clonePos.x, clonePos.y, clonePos.z, false, false, false)
                        SetEntityCollision(object, false, false)
                        AttachEntityToEntity(object, clone, GetPedBoneIndex(clone, prop.bone), prop.placement[1].x, prop.placement[1].y, prop.placement[1].z, prop.placement[2].x, prop.placement[2].y, prop.placement[2].z, true, true, false, true, 1, true)

                        cloneProps[#cloneProps + 1] = object

                        SetModelAsNoLongerNeeded(prop.hash)
                    end
                end
            end
        end
    end

    local endTimer = ((cloneDuration or 0) + 1) * 1000

    if endTimer > 5000 then
        endTimer = 5000
    end

    Wait(endTimer)

    for i = 1, #cloneProps do
        DeleteEntity(cloneProps[i])
    end

    cloneProps = {}

    DeleteEntity(clone)
end

---Cancel the animation you're currently playing
---@param skipReset boolean
function cancelEmote(skipReset)
    if isPlayingAnimation and not isActionsLimited then
        if IsPedUsingAnyScenario(cache.ped) then ClearPedTasksImmediately(cache.ped) end
        if LocalPlayer.state.ptfx then LocalPlayer.state:set('ptfx', false, true) end
        if Config.PtfxKeybind then keybinds.PlayPtfx:disable(true) end

        ClearPedTasks(cache.ped)
        DetachEntity(cache.ped, true, false)
        TriggerServerEvent('scully_emotemenu:deleteProps', otherPlayer)

        isPlayingAnimation = false

        if not skipReset then
            lastEmote, lastVariant = nil, nil
        end

        if otherPlayer then
            TriggerServerEvent('scully_emotemenu:cancelSynchronizedEmote', otherPlayer)

            otherPlayer = nil
        end
    end
end
exports('cancelEmote', cancelEmote)

---Get the players current expression
---@return string
function getCurrentExpression()
    return currentExpression
end
exports('getCurrentExpression', getCurrentExpression)

---Set the players current expression
---@param name string
function setExpression(name)
    ---@diagnostic disable-next-line: param-type-mismatch
    SetFacialIdleAnimOverride(cache.ped, name, 0)
    SetResourceKvp('animations_expression', name)

    currentExpression = name
end
exports('setExpression', setExpression)

---Reset the players expression
function resetExpression()
    ClearFacialIdleAnimOverride(cache.ped)
    SetResourceKvp('animations_expression', 'default')

    currentExpression = 'default'
end
exports('resetExpression', resetExpression)

---Get the players current walk style
---@return string
function getCurrentWalk()
    return currentWalk
end
exports('getCurrentWalk', getCurrentWalk)

---Set the players current walk style
---@param name string
function setWalk(name)
    lib.requestAnimSet(name, 1000)
    SetPedMovementClipset(cache.ped, name, 0.2)
    RemoveAnimSet(name)
    SetResourceKvp('animations_walkstyle', name)

    currentWalk = name
end
exports('setWalk', setWalk)

---Reset the players walk style
function resetWalk()
    ResetPedMovementClipset(cache.ped, 0)
    SetResourceKvp('animations_walkstyle', 'default')

    currentWalk = 'default'
end
exports('resetWalk', resetWalk)

---Finish the animation placement
---@param location vector3
---@param heading number
---@param data table
function finishPlacementEmote(location, heading, data)
    if DoesEntityExist(clone --[[@as number]]) then DeleteEntity(clone --[[@as number]]) end
    clone = nil

    lib.hideTextUI()
    TaskGoToCoordAnyMeans(cache.ped, location.x, location.y, location.z, 1.0, 0, false, 786603, 0xbf800000)

    local coords = GetEntityCoords(cache.ped)

    showHelpAlert(nil, lang.right_click_to_cancel)

    while #(coords - location) > 1.5 do
        Wait(0)

        coords = GetEntityCoords(cache.ped)

        if IsControlJustPressed(0, 177) then
            lib.hideTextUI()
            ClearPedTasks(cache.ped)
            location = vec3(0)

            break
        end
    end

    lib.hideTextUI()
    if location ~= vec3(0) then
        SetEntityCoords(cache.ped, location.x, location.y, location.z, false, false, false, false)

        data.Advanced = {
            Coords = location,
            Heading = heading,
        }

        playEmote(data)
    end
end

---Start the animation placement
---@param data table
function startPlacementThread(data)
    clone = ClonePed(cache.ped, false, false, true)

    FreezeEntityPosition(clone, true)
    SetEntityAlpha(clone, 0, false)

    local dictionaryName, animationName = data.Dictionary, data.Animation
    local isValid = lib.requestAnimDict(dictionaryName, 1000)

    if not isValid then
        notify('error', lang.not_valid_emote)
        return
    end

    if data.Options then
        duration = data.Options.Duration

        if data.Options.Delay then Wait(data.Options.Delay) end

        if not cache.vehicle and data.Options.Flags then
            if data.Options.Flags.Loop then movementFlag = 1 end
            if data.Options.Flags.Move then movementFlag = 51 end
            if data.Options.Flags.Stuck then movementFlag = 50 end
        end
    end

    TaskPlayAnim(clone, dictionaryName, animationName, 2.0, 2.0, duration or -1, movementFlag, 0, false, false, false)
    RemoveAnimDict(dictionaryName)

    if data.Options then
        local secondaryEmote = data.Options.SecondaryEmote

        if secondaryEmote then
            local isSecondaryValid = lib.requestAnimDict(secondaryEmote.Dictionary, 1000)

            if not isSecondaryValid then
                notify('error', lang.not_valid_emote)
                return
            end

            TaskPlayAnim(clone, secondaryEmote.Dictionary, secondaryEmote.Animation, 2.0, 2.0, secondaryEmote.Duration or -1, 51, 0, false, false, false)
            RemoveAnimDict(secondaryEmote.Dictionary)
        end

        local propData = data.Options.Props

        if propData then
            local propCount = #propData

            if propCount > 0 then
                Wait(duration or 0)

                local propList = {}

                for i = 1, propCount do
                    local prop = propData[i]
                    local variant = prop.Variant

                    if variation then
                        if prop.Variations and prop.Variations[variation] then
                            variant = prop.Variations[variation]
                        end
                    end

                    propList[#propList + 1] = {
                        hash = joaat(prop.Name),
                        bone = prop.Bone,
                        placement = prop.Placement,
                        variant = variant
                    }
                end

                if #propList > 0 then
                    for i = 1, #propList do
                        local prop = propList[i]

                        lib.requestModel(prop.hash, 1000)

                        local object = CreateObject(prop.hash, clonePos.x, clonePos.y, clonePos.z, false, false, false)
                        SetEntityCollision(object, false, false)
                        AttachEntityToEntity(object, clone, GetPedBoneIndex(clone, prop.bone), prop.placement[1].x, prop.placement[1].y, prop.placement[1].z, prop.placement[2].x, prop.placement[2].y, prop.placement[2].z, true, true, false, true, 1, true)

                        cloneProps[#cloneProps + 1] = object

                        SetModelAsNoLongerNeeded(prop.hash)
                    end
                end
            end
        end
    end

    SetEntityCollision(clone, false, false)
    SetEntityAlpha(clone, 200, false)
    SetBlockingOfNonTemporaryEvents(clone, true)

    local currentCoords = nil
    local heading = GetEntityHeading(cache.ped) + 90.0

    showHelpAlert(nil, table.concat(lang.placement_text))

    SetTimeout(0, function()
        local offsetZ = 0.0
        local hit, _, endCoords

        CreateThread(function()
            while clone do
                hit, _, endCoords = lib.raycast.cam(511, 7)
                Wait(5)
            end
        end)

        while clone do
            Wait(0)

            DisableControlAction(0, 22, true)

            if hit then
                currentCoords = endCoords

                SetEntityCoords(clone, currentCoords.x, currentCoords.y, currentCoords.z + offsetZ, false, false, false, false)
                SetEntityHeading(clone, heading)
            end

            if IsDisabledControlJustPressed(0, 14) then
                heading += 5

                if heading > 360 then heading = 0.0 end
            elseif IsDisabledControlJustPressed(0, 15) then
                heading -= 5

                if heading < 0 then heading = 360.0 end
            elseif IsDisabledControlPressed(0, 27) then
                offsetZ += 0.01

                if offsetZ > 1.0 then offsetZ = 1.0 end
            elseif IsDisabledControlPressed(0, 173) then
                offsetZ -= 0.01

                if offsetZ < -1.0 then offsetZ = -1.0 end
            end

            if IsControlJustPressed(0, 201) then
                local coords = GetEntityCoords(cache.ped)
                local distance = #(coords - currentCoords)

                if distance < 5.0 then
                    finishPlacementEmote(GetEntityCoords(clone), GetEntityHeading(clone), lib.table.deepclone(data))
                else
                    notify('error', lang.too_far)
                end
            elseif IsControlJustPressed(0, 177) then
                if DoesEntityExist(clone) then DeleteEntity(clone) end
                clone = nil
                lib.hideTextUI()
            end
        end
    end)
end

---Attach a prop to the player
---@param object number
---@param bone number
---@param placement table
---@param variant number
function addPropToPlayer(object, bone, placement, variant)
    SetEntityCollision(object, false, false)

    if variant then SetObjectTextureVariation(object, variant) end

    AttachEntityToEntity(object, cache.ped, GetPedBoneIndex(cache.ped, bone), placement[1].x, placement[1].y, placement[1].z, placement[2].x, placement[2].y, placement[2].z, true, true, false, true, 1, true)
end

---Remove unsupported emotes
function removeUnsupportedEmotes()
    local checkMenus = {
        'Walks',
        'Scenarios',
        'Expressions',
        'Emotes',
        'PropEmotes',
        'ConsumableEmotes',
        'DanceEmotes',
        'SynchronizedEmotes',
        'AnimalEmotes'
    }

    local DoesAnimDictExist = DoesAnimDictExist
    local IsModelValid = IsModelValid

    for i = 1, #checkMenus do
        if AnimationList[checkMenus[i]] then
            AnimationList[checkMenus[i]] = removeFromTable(AnimationList[checkMenus[i]], function(_table, _index)
                local animation, doesExist = _table[_index], true

                if gameBuild < 2699 then
                    if animation.Dictionary and not DoesAnimDictExist(animation.Dictionary) then doesExist = false end
                    if animation.Options and animation.Options.Props then
                        local props = animation.Options.Props
                        local propCount = #props

                        if propCount > 0 then
                            for k = 1, propCount do
                                if not IsModelValid(joaat(props[k].Name)) then
                                    doesExist = false
                                    break
                                end
                            end
                        end
                    end

                    if not doesExist then
                        print(lang.gamebuild_not_supported:format(animation.Label))
                    end
                end

                return doesExist
            end)
        end
    end
end

---Search for animations
---@param query string
function searchMenu(query)
    Wait(500)

    local checkMenus, foundEmotes = {
        'Walks',
        'Scenarios',
        'Expressions',
        'Emotes',
        'PropEmotes',
        'ConsumableEmotes',
        'DanceEmotes',
        'SynchronizedEmotes',
        'AnimalEmotes'
    }, {}

    for i = 1, #checkMenus do
        local animType = checkMenus[i]
        local animList = AnimationList[animType]

        if animList then
            for emote = 1, #animList do
                local anim = animList[emote]

                if anim and anim.Command and string.find(string.lower(anim.Command), query) then
                    anim.CommandHandle = animType == 'Walks' and Config.WalkSetCommands[1] or Config.EmotePlayCommands[1]
                    anim.Type = animType
                    foundEmotes[#foundEmotes + 1] = anim
                end
            end
        end
    end

    if #foundEmotes == 0 then
        notify('error', lang.no_animations_found)
        lib.showMenu('animations_main_menu')
        return
    end

    local options = {}

    for emote = 1, #foundEmotes do
        local _emote = foundEmotes[emote]

        if _emote then
            options[#options + 1] = {label = _emote.Label, description = ('%s %s / (%s)'):format(_emote.CommandHandle, _emote.Command, _emote.Type), icon = 'fa-solid fa-person', args = _emote.Command, close = false}
        end
    end

    lib.registerMenu({
        id = 'animations_search_menu',
        title = 'Animation Menu',
        position = Config.MenuPosition,
        options = options,
        onClose = function()
            lib.showMenu('animations_main_menu')
        end,
    }, function(_, _, option)
        if isActionsLimited then return end

        local _type, emote = getEmoteByCommand(option)

        if not _type then
            notify('error', 'That isn\'t a valid emote or walk style')
            return
        end

        if _type == 'Walks' then
            setWalk(emote?.Walk)
            return
        end

        if _type == 'SynchronizedEmotes' then
            requestSynchronizedEmote(emote)
            return
        end

        playEmote(emote --[[@as table]])
    end)
    lib.showMenu('animations_search_menu')
end

---Create an emote bind
---@param index number
---@param emote table
function createBind(index, emote)
    Wait(500)

    emoteMenuBindsOptions[index] = {label = emote.Label, description = lang.delete_bind, icon = ('fa-solid fa-%s'):format(index), args = index}
    emoteBinds[index] = {Index = index, Label = emote.Label, Emote = emote.Command}

    SetResourceKvp('animations_binds', json.encode(emoteBinds))
    notify('success', (lang.bind_created):format(emote.Label))
    openBindMenu()
end

---Delete an emote bind
---@param index number
function deleteBind(index)
    Wait(500)

    emoteMenuBindsOptions[index] = {label = lang.none, description = lang.new_bind, icon = 'fa-solid fa-1', args = 'animations_create_bind'}
    emoteBinds = removeFromTable(emoteBinds, function(_table, _index)
        return _table[_index].Index ~= index
    end)

    SetResourceKvp('animations_binds', json.encode(emoteBinds))
    notify('error', lang.bind_deleted)
    openBindMenu()
end

---Open the emote bind menu
function openBindMenu()
    lib.registerMenu({
        id = 'animations_emote_binds_menu',
        title = lang.emote_menu,
        position = Config.MenuPosition,
        options = emoteMenuBindsOptions,
        onClose = function()
            lib.showMenu('animations_main_menu')
        end,
    }, function(selected, _, option)
        if isActionsLimited then return end

        if option == 'animations_create_bind' then
            local query = lib.inputDialog(lang.create_emote_bind, {lang.emote_command_name})

            if not query then return end

            local _type, emote = getEmoteByCommand(query[1] --[[@as string]])

            if not _type or _type == 'Walks' then
                notify('error', lang.not_valid_emote)
                return
            end

            if emote?.BlockBinding then
                notify('error', lang.not_allowed_to_bind)
                return
            end

            createBind(selected, emote --[[@as table]])

            return
        end

        deleteBind(option)
    end)

    lib.showMenu('animations_emote_binds_menu')
end

local IsPedFalling = IsPedFalling
local IsPedJumping = IsPedJumping
local IsAimCamActive = IsAimCamActive
local SetPedMaxMoveBlendRatio = SetPedMaxMoveBlendRatio
local IsPedUsingActionMode = IsPedUsingActionMode
local SetPedUsingActionMode = SetPedUsingActionMode
local SetPedCanPlayAmbientAnims = SetPedCanPlayAmbientAnims
local DisableFirstPersonCamThisFrame = DisableFirstPersonCamThisFrame

---Crouch loop
function crouchLoop()
    CreateThread(function()
        while LocalPlayer.state.stance == 2 do
            Wait(0)

            if cache.vehicle then
                LocalPlayer.state:set('stance', 0, false)
                break
            end

            if IsPedFalling(cache.ped) then
                LocalPlayer.state:set('stance', 0, false)
                break
            end

            if IsPedJumping(cache.ped) then
                LocalPlayer.state:set('stance', 0, false)
                break
            end

            if IsAimCamActive() then
                SetPedMaxMoveBlendRatio(cache.ped, 0.15)
            end

            if IsPedUsingActionMode(cache.ped) then
                SetPedUsingActionMode(cache.ped, false, -1, 'DEFAULT_ACTION')
            end

            SetPedCanPlayAmbientAnims(cache.ped, false)
            DisableFirstPersonCamThisFrame()
        end
    end)
end

-- Disable the stance controls
function disableStanceControls()
    lib.disableControls:Add({36, 26})

    CreateThread(function()
        while IsDisabledControlPressed(0, 36) or IsDisabledControlPressed(0, 26) do
            Wait(0)

            lib.disableControls()
        end

        lib.disableControls:Remove({36, 26})
    end)
end

-- Add / Remove options
removeUnsupportedEmotes()

if not Config.EnableNSFWEmotes then
    removeEmotes('NSFW')
end

if not Config.EnableGangEmotes then
    removeEmotes('Gang')
end

if not Config.EnableSocialMovementEmotes then
    removeEmotes('SocialMovement')
end

addEmotesToMenu('Emotes', Config.EmotePlayCommands[1])
addEmotesToMenu('PropEmotes', Config.EmotePlayCommands[1])
addEmotesToMenu('DanceEmotes', Config.EmotePlayCommands[1])
addEmotesToMenu('Walks', Config.WalkSetCommands[1])
addEmotesToMenu('Scenarios', Config.EmotePlayCommands[1])
addEmotesToMenu('Expressions', Config.EmotePlayCommands[1])

if Config.EnableRadialMenu then
    lib.registerRadial({
        id = 'scully_emotemenu:main',
        items = {
            {
                id = 'scully_emotemenu:open',
                label = lang.open_menu,
                icon = 'person-walking',
                onSelect = 'toggleMenu'
            },
            {
                id = 'scully_emotemenu:walks_',
                label = lang.walking_styles,
                icon = 'person-walking',
                menu = 'scully_emotemenu:walks'
            },
            {
                id = 'scully_emotemenu:expressions_',
                label = lang.facial_expressions,
                icon = 'face-angry',
                menu = 'scully_emotemenu:expressions'
            },
            {
                id = 'scully_emotemenu:cancel',
                label = lang.cancel,
                icon = 'ban',
                onSelect = 'cancelEmote'
            }
        }
    })

    lib.addRadialItem({{
        id = 'scully_emotemenu:open',
        label = lang.emotes,
        icon = 'person-walking',
        menu = 'scully_emotemenu:main'
    }})

    addEmotesToRadial('Walks', 'scully_emotemenu:walks', 'person-walking', {
        label = lang.cancel,
        icon = 'ban',
        onSelect = function()
            resetWalk()
        end
    })

    addEmotesToRadial('Expressions', 'scully_emotemenu:expressions', 'face-angry', {
        label = lang.cancel,
        icon = 'ban',
        onSelect = function()
            resetExpression()
        end
    })
end

if not Config.EnableSearch then
    mainMenuOptions = removeFromTable(mainMenuOptions, function(_table, _index)
        return _table[_index].args ~= 'animations_search'
    end)
end

if Config.EnableEmoteBinds then
    local binds = emoteBinds

    for i = 1, 5 do
        local command = ('emotebind-%s'):format(i)

        RegisterCommand(command, function()
            local bind = emoteBinds[i]
            if bind then
                playEmoteByCommand(bind.Emote)
            end
        end, false)

        RegisterKeyMapping(command, command, 'keyboard', '')
    end

    for i = 1, #binds do
        local bind = binds[i]

        if bind then
            emoteMenuBindsOptions[i] = {label = bind.Label, description = lang.delete_bind, icon = ('fa-solid fa-%s'):format(i), args = bind.Index}
        end
    end
else
    mainMenuOptions = removeFromTable(mainMenuOptions, function(_table, _index)
        return _table[_index].args ~= 'animations_emote_binds_menu'
    end)
end

if Config.EnableConsumableEmotes then
    addEmotesToMenu('ConsumableEmotes', Config.EmotePlayCommands[1])
else
    emoteMenuOptions = removeFromTable(emoteMenuOptions, function(_table, _index)
        return _table[_index].args ~= 'ConsumableEmotes'
    end)
end

if Config.EnableSynchronizedEmotes then
    addEmotesToMenu('SynchronizedEmotes', Config.EmotePlayCommands[1])
else
    emoteMenuOptions = removeFromTable(emoteMenuOptions, function(_table, _index)
        return _table[_index].args ~= 'SynchronizedEmotes'
    end)
end

if Config.EnableAnimalEmotes then
    addEmotesToMenu('AnimalEmotes', Config.EmotePlayCommands[1])
else
    emoteMenuOptions = removeFromTable(emoteMenuOptions, function(_table, _index)
        return _table[_index].args ~= 'AnimalEmotes'
    end)
end

-- Register Menus
--- Main Menu
lib.registerMenu({
    id = 'animations_main_menu',
    title = lang.emote_menu,
    position = Config.MenuPosition,
    options = mainMenuOptions,
}, function(_, scrollIndex, option)
    if isActionsLimited then return end

    if option == 'animations_search' then
        local query = lib.inputDialog(lang.emote_search, {lang.emote})

        if not query then return end

        searchMenu(string.lower(query[1] --[[@as string]]))

        return
    elseif option == 'animations_emote_binds_menu' then
        openBindMenu()

        return
    elseif option == 'animations_emote_menu' then
        lib.showMenu('animations_emote_menu')

        return
    elseif option == 'cancel' then
        if scrollIndex == 1 then
            cancelEmote(false)
        elseif scrollIndex == 2 then
            resetWalk()
        elseif scrollIndex == 3 then
            resetExpression()
        elseif scrollIndex == 4 then
            cancelEmote(false)
            resetWalk()
            resetExpression()
        end

        return
    end

    local emote = AnimationList[option][scrollIndex]

    if not emote then
        notify('error', lang.not_valid_emote)

        return
    end

    if option == 'Walks' then
        setWalk(emote.Walk)

        return
    end

    playEmote(emote)
end)

--- Emote Menu
lib.registerMenu({
    id = 'animations_emote_menu',
    title = lang.emote_menu,
    position = Config.MenuPosition,
    options = emoteMenuOptions,
    onClose = function()
        lib.showMenu('animations_main_menu')
    end,
}, function(selected, scrollIndex, option)
    if isActionsLimited then return end

    local emote = AnimationList[option][scrollIndex]

    if not emote then
        notify('error', lang.not_valid_emote)

        return
    end

    if option == 'SynchronizedEmotes' then
        requestSynchronizedEmote(emote)

        return
    end

    if IsControlPressed(0, 38) and Config.EnableEmotePreview then
        initCloneEmote(emote)
        return
    end

    playEmote(emote)
end)

-- Commands
for i = 1, #Config.MenuOpenCommands do
    RegisterCommand(Config.MenuOpenCommands[i], function(source, args, rawCommand)
        if isActionsLimited then return end

        toggleMenu()
    end, false)
end

for i = 1, #Config.EmotePlayCommands do
    RegisterCommand(Config.EmotePlayCommands[i], function(source, args, rawCommand)
        if isActionsLimited then return end

        if not args[1] then
            notify('error', lang.not_valid_emote)

            return
        end

        local emoteName = args[1]:lower()

        if emoteName == 'c' then
            cancelEmote(false)

            return
        end

        if emoteName == 'l' then
            listEmotes('Emotes')

            return
        end

        local _type, emote = getEmoteByCommand(emoteName)

        if not _type or _type == 'Walks' then
            notify('error', lang.not_valid_emote)

            return
        end

        if _type == 'SynchronizedEmotes' then
            requestSynchronizedEmote(emote)

            return
        end

        local variant = nil
        local selectedVariant = args[2]

        if selectedVariant then
            local index = tonumber(selectedVariant)

            if index then variant = index end
        end

        playEmote(emote --[[@as table]], variant)
    end, false)
end

for i = 1, #Config.WalkSetCommands do
    RegisterCommand(Config.WalkSetCommands[i], function(_, args)
        if isActionsLimited then return end

        if not args[1] then
            notify('error', lang.not_valid_walk)

            return
        end

        local walkName = args[1]:lower()

        if walkName == 'c' then
            resetWalk()

            return
        end

        if walkName == 'l' then
            listEmotes('Walks')

            return
        end

        local _type, emote = getEmoteByCommand(walkName)

        if not _type or (_type ~= 'Walks') then
            notify('error', lang.not_valid_walk)

            return
        end

        setWalk(emote?.Walk)
    end, false)
end

-- Keybinds
if Config.MenuKeybind ~= '' then
    if #Config.MenuOpenCommands > 0 then
        RegisterKeyMapping(Config.MenuOpenCommands[1], lang.open_emote_menu, 'keyboard', Config.MenuKeybind)
    end
end

if Config.CancelEmoteKey ~= '' then
    keybinds.CancelKey = lib.addKeybind({
        name = 'ecancel',
        description = lang.cancel_your_emote,
        defaultKey = Config.CancelEmoteKey,
        onPressed = function()
            cancelEmote(false)
        end
    })
end

if Config.RagdollKeybind ~= '' then
    local IsPedOnFoot = IsPedOnFoot
    local SetPedToRagdoll = SetPedToRagdoll

    keybinds.Ragdoll = lib.addKeybind({
        name = 'ragdoll',
        description = lang.ragdoll_character,
        defaultKey = Config.RagdollKeybind,
        onPressed = function()
            if isActionsLimited or isPlayingAnimation then return end

            isRagdoll = not isRagdoll

            while isRagdoll do
                Wait(0)
                if isActionsLimited then
                    isRagdoll = false
                    break
                end

                if IsPedOnFoot(cache.ped) then
                    SetPedToRagdoll(cache.ped, 1000, 1000, 0, false, false, false)
                end
            end
        end
    })
end

if Config.HandsUpKey ~= '' then
    keybinds.HandsUp = lib.addKeybind({
        name = 'handsup',
        description = lang.hands_up,
        defaultKey = Config.HandsUpKey,
        onPressed = function()
            if isActionsLimited then return end

            local onBike = false

            if cache.vehicle then
                local model = GetEntityModel(cache.vehicle)

                onBike = IsThisModelABike(model)
            end

            lib.requestAnimDict('random@mugging3', 1000)
            ---@diagnostic disable-next-line: param-type-mismatch
            TaskPlayAnim(cache.ped, 'random@mugging3', 'handsup_standing_base', 8.0, 8.0, -1, 50, 0, false, onBike and 4127 or false, false)
        end,
        onReleased = function()
            if isActionsLimited then return end
            
            ClearPedTasks(cache.ped)
        end
    })
end

if Config.StanceKey ~= '' then
    LocalPlayer.state:set('stance', 0, false)

    keybinds.Stance = lib.addKeybind({
        name = 'stance',
        description = lang.stance,
        defaultKey = Config.StanceKey,
        onPressed = function()
            if isActionsLimited or cache.vehicle then return end

            DisableControlAction(0, 36, true)
            DisableControlAction(0, 26, true)
            disableStanceControls()

            local stanceLevel = LocalPlayer.state.stance

            if returnStance then
                stanceLevel -= 1

                if stanceLevel == 0 then returnStance = false end
            else
                stanceLevel += 1

                if stanceLevel == 2 then returnStance = true end
            end

            LocalPlayer.state:set('stance', stanceLevel, false)
        end
    })
end

if Config.PointKey ~= '' then
    local GetGameplayCamRelativePitch = GetGameplayCamRelativePitch
    local GetGameplayCamRelativeHeading = GetGameplayCamRelativeHeading
    local Cos = Cos
    local Sin = Sin
    local GetOffsetFromEntityInWorldCoords = GetOffsetFromEntityInWorldCoords
    local StartShapeTestCapsule = StartShapeTestCapsule
    local GetShapeTestResult = GetShapeTestResult
    local SetTaskMoveNetworkSignalFloat = SetTaskMoveNetworkSignalFloat
    local SetTaskMoveNetworkSignalBool = SetTaskMoveNetworkSignalBool
    local GetCamViewModeForContext = GetCamViewModeForContext
    local GetCamActiveViewModeContext = GetCamActiveViewModeContext

    keybinds.Point = lib.addKeybind({
        name = 'point',
        description = lang.point,
        defaultKey = Config.PointKey,
        onPressed = function()
            if isActionsLimited then return end

            isPointing = not isPointing

            if isPointing then
                if cache.vehicle then return end

                lib.requestAnimDict('anim@mp_point', 1000)
                SetPedCurrentWeaponVisible(cache.ped, false, true, true, true)
                SetPedConfigFlag(cache.ped, 36, true)
                TaskMoveNetworkByName(cache.ped, 'task_mp_pointing', 0.5, false, 'anim@mp_point', 24)
                RemoveAnimDict('anim@mp_point')
                CreateThread(function()
                    while isPointing do
                        Wait(0)
                        local camPitch = GetGameplayCamRelativePitch()

                        if camPitch < -70.0 then
                            camPitch = -70.0
                        elseif camPitch > 42.0 then
                            camPitch = 42.0
                        end

                        camPitch = (camPitch + 70.0) / 112.0

                        local camHeading = GetGameplayCamRelativeHeading()
                        local cosCamHeading = Cos(camHeading)
                        local sinCamHeading = Sin(camHeading)

                        if camHeading < -180.0 then
                            camHeading = -180.0
                        elseif camHeading > 180.0 then
                            camHeading = 180.0
                        end

                        camHeading = (camHeading + 180.0) / 360.0

                        local coords = GetOffsetFromEntityInWorldCoords(cache.ped, (cosCamHeading * -0.2) - (sinCamHeading * (0.4 * camHeading + 0.3)), (sinCamHeading * -0.2) + (cosCamHeading * (0.4 * camHeading + 0.3)), 0.6)
                        local ray = StartShapeTestCapsule(coords.x, coords.y, coords.z - 0.2, coords.x, coords.y, coords.z + 0.2, 0.4, 95, cache.ped, 7)
                        local _, blocked = GetShapeTestResult(ray)

                        SetTaskMoveNetworkSignalFloat(cache.ped, 'Pitch', camPitch)
                        SetTaskMoveNetworkSignalFloat(cache.ped, 'Heading', camHeading * -1.0 + 1.0)
                        SetTaskMoveNetworkSignalBool(cache.ped, 'isBlocked', blocked)
                        SetTaskMoveNetworkSignalBool(cache.ped, 'isFirstPerson', GetCamViewModeForContext(GetCamActiveViewModeContext()) == 4)
                    end
                end)
            else
                RequestTaskMoveNetworkStateTransition(cache.ped, 'Stop')

                if not IsPedInjured(cache.ped) then ClearPedSecondaryTask(cache.ped) end
                if not cache.vehicle then SetPedCurrentWeaponVisible(cache.ped, true, true, true, true) end

                SetPedConfigFlag(cache.ped, 36, false)
                ClearPedSecondaryTask(cache.ped)
            end
        end
    })
end

if Config.PtfxKeybind then
    keybinds.PlayPtfx = lib.addKeybind({
        name = 'playptfx',
        disabled = true,
        description = lang.play_ptfx,
        defaultKey = Config.PtfxKeybind,
        onPressed = function()
            LocalPlayer.state:set('ptfx', true, true)

            if not ptfxCanHold then
                LocalPlayer.state:set('ptfx', false, true)
            end
        end,
        onReleased = function()
            if ptfxCanHold then
                LocalPlayer.state:set('ptfx', false, true)
            end
        end
    })
end

-- State Bag Handlers
---@diagnostic disable-next-line: param-type-mismatch
AddStateBagChangeHandler('ptfx', nil, function(bagName, _, value)
    local serverId = tonumber(bagName:gsub('player:', ''), 10)

    if (playerParticles[serverId] and value) or (not playerParticles[serverId] and not value) then return end

    local playerId = GetPlayerFromServerId(serverId)

    if not playerId then return end

    local playerPed = GetPlayerPed(playerId)
    local stateBag = Player(serverId).state

    if value then
        local asset, name, offset, rot, scale, color, propNet, entityTarget = stateBag.ptfxAsset, stateBag.ptfxName, stateBag.ptfxOffset, stateBag.ptfxRot, stateBag.ptfxScale or 1, stateBag.ptfxColor, stateBag.ptfxPropNet, playerPed
        local boneIndex = stateBag.ptfxBone and GetPedBoneIndex(playerPed, stateBag.ptfxBone) or GetEntityBoneIndexByName(name, "VFX")

        if propNet then
            local propObj = NetworkGetEntityFromNetworkId(propNet)
            if DoesEntityExist(propObj) then entityTarget = propObj end
        end

        lib.requestNamedPtfxAsset(asset, 1000)
        UseParticleFxAsset(asset)
        playerParticles[serverId] = StartParticleFxLoopedOnEntityBone(name, entityTarget, offset.x, offset.y, offset.z, rot.x, rot.y, rot.z, boneIndex, scale + 0.0, false, false, false)

        if color then
            if color[1] and type(color[1]) == 'table' then
                local randomIndex = math.random(1, #color)

                color = color[randomIndex]
            end

            SetParticleFxLoopedAlpha(playerParticles[serverId], color.A)
            SetParticleFxLoopedColour(playerParticles[serverId], color.R / 255, color.G / 255, color.B / 255, false)
        end
    else
        StopParticleFxLooped(playerParticles[serverId], false)
        RemoveNamedPtfxAsset(stateBag.ptfxAsset)
        playerParticles[serverId] = nil
    end
end)

---@diagnostic disable-next-line: param-type-mismatch
AddStateBagChangeHandler('stance', nil, function(_, _, value)
    if value == 0 then -- Regular
        ---@diagnostic disable-next-line: param-type-mismatch
        SetPedStealthMovement(cache.ped, false, 0)
    elseif value == 1 then -- Stealth
        if currentWalk == 'default' then
            ResetPedMovementClipset(cache.ped, 1.0)
        else
            lib.requestAnimSet(currentWalk, 1000)
            SetPedMovementClipset(cache.ped, currentWalk, 1.0)
        end

        ResetPedWeaponMovementClipset(cache.ped)
        ResetPedStrafeClipset(cache.ped)
        ---@diagnostic disable-next-line: param-type-mismatch
        SetPedStealthMovement(cache.ped, true, 0)
    elseif value == 2 then -- Crouched
        lib.requestAnimSet('move_ped_crouched', 1000)
        ---@diagnostic disable-next-line: param-type-mismatch
        SetPedStealthMovement(cache.ped, false, 0)
        SetPedMovementClipset(cache.ped, 'move_ped_crouched', 1.0)
        SetPedWeaponMovementClipset(cache.ped, 'move_ped_crouched')
        SetPedStrafeClipset(cache.ped, 'move_ped_crouched_strafing')
        crouchLoop()
    end
end)

-- Events
RegisterNetEvent('scully_emotemenu:cancelEmote', cancelEmote)
RegisterNetEvent('scully_emotemenu:closeMenu', closeMenu)
RegisterNetEvent('scully_emotemenu:play', playEmote)
RegisterNetEvent('scully_emotemenu:playByCommand', playEmoteByCommand)
RegisterNetEvent('scully_emotemenu:playRegisteredEmote', playRegisteredEmote)
RegisterNetEvent('scully_emotemenu:registerEmote', registerEmote)
RegisterNetEvent('scully_emotemenu:resetExpression', resetExpression)
RegisterNetEvent('scully_emotemenu:setExpression', setExpression)
RegisterNetEvent('scully_emotemenu:resetWalk', resetWalk)
RegisterNetEvent('scully_emotemenu:setWalk', setWalk)
RegisterNetEvent('scully_emotemenu:toggleLimitation', setLimitation)
RegisterNetEvent('scully_emotemenu:listEmotes', listEmotes)
RegisterNetEvent('scully_emotemenu:toggleMenu', toggleMenu)

local IsControlJustPressed = IsControlJustPressed

RegisterNetEvent('scully_emotemenu:synchronizedEmoteRequest', function(sender, senderData, targetData)
    PlaySoundFrontend(-1, 'NAV', 'HUD_AMMO_SHOP_SOUNDSET', false)
    showHelpAlert('fa-solid fa-question', (lang.accept_deny):format(targetData.Label))

    while true do
        Wait(0)
        if IsControlJustPressed(0, 246) then
            lib.hideTextUI()
            TriggerServerEvent('scully_emotemenu:synchronizedEmoteResponse', sender, senderData, targetData)
            break
        elseif IsControlJustPressed(0, 306) then
            lib.hideTextUI()
            break
        end
    end
end)

RegisterNetEvent('scully_emotemenu:targetStartSynchronizedEmote', function(sender, senderData, targetData)
    local isValid = lib.requestAnimDict(targetData.Dictionary, 1000)

    if not isValid then
        notify('error', lang.not_valid_emote)
        return
    end

    if targetData.Options.Shared.Attach and not senderData.Options.Shared.Attach then
        local senderId = GetPlayerFromServerId(sender)
        local senderPed = GetPlayerPed(senderId)
        local bone = targetData.Options.Shared.Bone or -1
        local placement = targetData.Options.Shared.Placement
        local xP, yP, zP, xR, yR, zR = 0.0, 0.0, 0.0, 0.0, 0.0, 0.0

        if placement then
            xP, yP, zP, xR, yR, zR = placement[1].x, placement[1].y, placement[1].z, placement[2].x, placement[2].y, placement[2].z
        end

        AttachEntityToEntity(cache.ped, senderPed, GetPedBoneIndex(senderPed, bone), xP, yP, zP, xR, yR, zR, false, false, false, true, 1, true)
    end

    playEmote(targetData)
    otherPlayer = sender
end)

RegisterNetEvent('scully_emotemenu:senderStartSynchronizedEmote', function(target, senderData)
    local isValid = lib.requestAnimDict(senderData.Dictionary, 1000)

    if not isValid then
        notify('error', lang.not_valid_emote)
        return
    end

    local targetId = GetPlayerFromServerId(target)
    local targetPed = GetPlayerPed(targetId)
    local frontOffset, sideOffset, heightOffset, headingOffset = 1.0, 0.0, 0.0, 180.1

    if senderData.Options.Shared.FrontOffset then
        frontOffset = senderData.Options.Shared.FrontOffset + 0.0
    end

    if senderData.Options.Shared.SideOffset then
        sideOffset = senderData.Options.Shared.SideOffset + 0.0
    end

    if senderData.Options.Shared.HeightOffset then
        heightOffset = senderData.Options.Shared.HeightOffset + 0.0
    end

    if senderData.Options.Shared.HeadingOffset then
        headingOffset = senderData.Options.Shared.HeadingOffset + 0.0
    end

    if senderData.Options.Shared.Attach then
        local bone = senderData.Options.Shared.Bone or -1
        local placement = senderData.Options.Shared.Placement
        local xP, yP, zP, xR, yR, zR = 0.0, 0.0, 0.0, 0.0, 0.0, 0.0
        if placement then
            xP, yP, zP, xR, yR, zR = placement[1].x, placement[1].y, placement[1].z, placement[2].x, placement[2].y, placement[2].z
        end
        AttachEntityToEntity(cache.ped, targetPed, GetPedBoneIndex(targetPed, bone), xP, yP, zP, xR, yR, zR, false, false, false, true, 1, true)
    end

    local targetCoords = GetOffsetFromEntityInWorldCoords(targetPed, sideOffset, frontOffset, heightOffset)
    local targetHeading = GetEntityHeading(targetPed)

    SetEntityHeading(cache.ped, targetHeading - headingOffset)
    SetEntityCoordsNoOffset(cache.ped, targetCoords.x, targetCoords.y, targetCoords.z, false, false, false)
    playEmote(senderData)

    otherPlayer = target
end)

RegisterNetEvent('scully_emotemenu:cancelSynchronizedEmote', function()
    otherPlayer = nil

    notify('error', lang.emote_cancelled)
    cancelEmote(false)
end)

-- Cache
lib.onCache('ped', function(playerPed)
    if cache.ped ~= playerPed then
        if currentExpression ~= 'default' then
            setExpression(currentExpression)
        end

        if currentWalk ~= 'default' then
            setWalk(currentWalk)
        end
    end
end)

AddEventHandler('playerSpawned', function()
    Wait(1000)
    if currentExpression ~= 'default' then
        setExpression(currentExpression)
    end

    if currentWalk ~= 'default' then
        setWalk(currentWalk)
    end
end)

AddEventHandler('entityDamaged', function(entity)
    if cache.ped == entity then
        if not IsPedFatallyInjured(cache.ped) then return end

        cancelEmote(false)
    end
end)

local openingDoor = false
local IsPedOpeningADoor = IsPedOpeningADoor

AddEventHandler('CEventOpenDoor', function()
    if not isPlayingAnimation then return end
    if openingDoor then return end

    openingDoor = true

    while IsPedOpeningADoor(cache.ped) do
        Wait(100)
    end

    openingDoor = false

    if lastEmote then
        cancelEmote(true)
        Wait(10)
        playEmote(lastEmote, lastVariant)
    end
end)

local hitTimeout, hittingPed = 500, false

AddEventHandler('CEventPlayerCollisionWithPed', function()
    if not isPlayingAnimation then return end

    if hittingPed then
        hitTimeout = 500
        return
    end

    hitTimeout, hittingPed = 500, true

    while hitTimeout > 0 do
        Wait(100)

        hitTimeout -= 100
    end

    if lastEmote then
        hitTimeout, hittingPed = 500, false

        cancelEmote(true)
        Wait(10)
        playEmote(lastEmote, lastVariant)
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        cancelEmote(false)
    end
end)
