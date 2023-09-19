--- This may be removed in the future as I would prefer scripts made use of the official exports. ---

local frameworkState = GetResourceState('qb-core')

if (frameworkState == 'unknown') or (frameworkState == 'missing') then return end

local api = exports.scully_emotemenu
local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()

---Check if the action is blocked
---@return boolean
local function isBlocked()
    local metadata = PlayerData.metadata

    return metadata.inlaststand or metadata.isdead or metadata.ishandcuffed
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerData = nil
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(data)
    PlayerData = data
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