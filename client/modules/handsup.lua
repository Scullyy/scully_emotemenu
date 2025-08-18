local DisableControlAction = DisableControlAction
local IsPedSwimming = IsPedSwimming
local DisablePlayerFiring = DisablePlayerFiring
local IsPedRagdoll = IsPedRagdoll
local TaskPlayAnim = TaskPlayAnim
local StopAnimTask = StopAnimTask
local RemoveAnimDict = RemoveAnimDict
local SetPedToRagdoll = SetPedToRagdoll
local IsEntityPlayingAnim = IsEntityPlayingAnim
local GetEntityModel = GetEntityModel
local IsThisModelACar = IsThisModelACar
local GetVehiclePedIsEntering = GetVehiclePedIsEntering

local function playHandsUpAnim(ped, dict, anim)
    lib.requestAnimDict(dict)
    TaskPlayAnim(ped, dict, anim, 8.0, 8.0, -1, 50, 0, false, false, false)
end

local function stopHandsUpAnim(ped, dict, anim)
    StopAnimTask(ped, dict, anim, 8.0)
    RemoveAnimDict(dict)
end

lib.addKeybind({
    name = 'handsupKey',
    description = locale('hands_up'),
    defaultKey = Config.handsUpKey,

    onPressed = function(self)
        local ped = cache.ped
        local vehicle = cache.vehicle

        if Config.handsUpIsToggle and PlayerState.handsup then
            PlayerState.handsup = false
            return
        end

        if PlayerState.isLimited then return end
        if GetVehiclePedIsEntering(ped) ~= 0 then return end
        if vehicle and not IsThisModelACar(GetEntityModel(vehicle)) then return end

        self.dict = vehicle and "missheist_agency2ahands_up" or "random@mugging3"
        self.anim = vehicle and "handsup_anxious" or "handsup_standing_base"

        playHandsUpAnim(ped, self.dict, self.anim)
        PlayerState.handsup = true

        local needsReset = false

        CreateThread(function()
            while PlayerState.handsup do
                Wait(0)

                local currentPed = cache.ped

                DisableControlAction(0, 25, true)
                DisablePlayerFiring(cache.playerId, true)

                if vehicle then
                    DisableControlAction(0, 59, true)
                end

                if IsPedSwimming(currentPed) and not IsPedRagdoll(currentPed) then
                    SetPedToRagdoll(currentPed, 1000, 1000, 0, false, false, false)
                end

                if IsPedRagdoll(currentPed) then
                    needsReset = true
                elseif needsReset then
                    playHandsUpAnim(currentPed, self.dict, self.anim)
                    needsReset = false
                elseif Config.handsUpIsToggle
                    and not IsEntityPlayingAnim(currentPed, self.dict, self.anim, 3) then
                    playHandsUpAnim(currentPed, self.dict, self.anim)
                end
            end

            if Config.handsUpIsToggle then
                stopHandsUpAnim(currentPed, self.dict, self.anim)
            end
        end)
    end,

    onReleased = not Config.handsUpIsToggle and function(self)
        if PlayerState.isLimited or not PlayerState.handsup then return end

        stopHandsUpAnim(cache.ped, self.dict, self.anim)
        PlayerState.handsup = false
    end
})