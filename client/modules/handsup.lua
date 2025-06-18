lib.addKeybind({
    name = 'handsupKey',
    description = locale('hands_up'),
    defaultKey = Config.handsUpKey,
    onPressed = function()
        if PlayerState.isLimited then return end
        if GetVehiclePedIsEntering(cache.ped) ~= 0 then return end

        local onBike = false

        if cache.vehicle then
            local model = GetEntityModel(cache.vehicle)

            onBike = IsThisModelABike(model)
        end

        lib.requestAnimDict('random@mugging3')
        TaskPlayAnim(cache.ped, 'random@mugging3', 'handsup_standing_base', 8.0, 8.0, -1, 50, 0, false, onBike and 4127 or false, false)

        PlayerState.handsup = true

        CreateThread(function()
            while PlayerState.handsup do
                Wait(0)

                DisableControlAction(0, 25, true)
                DisablePlayerFiring(cache.playerId, true)
            end
        end)
    end,
    onReleased = function()
        if PlayerState.isLimited then return end
        if not PlayerState.handsup then return end

        StopAnimTask(cache.ped, 'random@mugging3', 'handsup_standing_base', 8.0)
        RemoveAnimDict('random@mugging3')

        PlayerState.handsup = false
    end
})