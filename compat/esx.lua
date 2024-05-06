local frameworkState = GetResourceState('es_extended')
if (frameworkState == 'unknown') or (frameworkState == 'missing') then return end
local api = exports.scully_emotemenu
local ESX = exports["es_extended"]:getSharedObject()
local PlayerData = ESX.GetPlayerData()
local PlayerState = LocalPlayer.state
local isDead = false
local ishandcuffed = false
---Check if the action is blocked
---@return boolean
local function isBlocked()
    local metadata = PlayerState.metadata or PlayerData.metadata
    return isDead or ishandcuffed or metadata.inlaststand or metadata.isdead or metadata.ishandcuffed
end

AddEventHandler('esx:onPlayerSpawn', function(spawn)
	isDead = false
end)
AddEventHandler('esx:onPlayerDeath', function(data)
	isDead = true
end)
AddEventHandler('esx_policejob:handcuff', function()
	ishandcuffed = true
end)
AddEventHandler('esx_policejob:unrestrain', function(data)
	isDead = false
end)

RegisterNetEvent('esx:playerLoaded', function()
    PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:onPlayerLogout', function()
    PlayerData = nil
end)

RegisterNetEvent('esx:setPlayerData', function(key, val, last)
    PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('animations:client:PlayEmote', function(data)
    if not isBlocked() then
        local emote = data[1]
        if emote then
            api:playEmoteByCommand(emote)
        end
    end
end)

RegisterNetEvent('animations:client:EmoteMenu', function()
    if not isBlocked() then
        api:toggleMenu()
    end
end)

RegisterNetEvent('animations:client:ListEmotes', function()
    if not isBlocked() then
        api:listEmotes('Emotes')
    end
end)

RegisterNetEvent('animations:client:Walk', function(data)
    if not isBlocked() then
        local walk = data[1]
        if walk then
            api:setWalk(walk)
        end
    end
end)

RegisterNetEvent('animations:client:ListWalks', function()
    if not isBlocked() then
        api:listEmotes('Walks')
    end
end)

RegisterNetEvent('animations:ToggleCanDoAnims', function(_bool)
    api:setLimitation(_bool)
end)

RegisterNetEvent('animations:client:EmoteCommandStart', function(data)
    if not isBlocked() and not api:isLimited() then
        local emote = data[1]

        if emote then
            api:playEmoteByCommand(emote)
        end
    end
end)
