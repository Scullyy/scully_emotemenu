local IsPedFalling = IsPedFalling
local IsPedJumping = IsPedJumping
local IsAimCamActive = IsAimCamActive
local SetPedMaxMoveBlendRatio = SetPedMaxMoveBlendRatio
local IsPedUsingActionMode = IsPedUsingActionMode
local SetPedUsingActionMode = SetPedUsingActionMode
local SetPedCanPlayAmbientAnims = SetPedCanPlayAmbientAnims
local DisableFirstPersonCamThisFrame = DisableFirstPersonCamThisFrame

local returnStance = false
PlayerState.stance = 0

-- Disable the stance controls
local function disableStanceControls()
    DisableControlAction(0, 36, true)
    DisableControlAction(0, 26, true)
    lib.disableControls:Add({36, 26})

    CreateThread(function()
        while IsDisabledControlPressed(0, 36) or IsDisabledControlPressed(0, 26) do
            Wait(0)

            lib.disableControls()
        end

        lib.disableControls:Remove({36, 26})
    end)
end

-- Reset stance state
local function resetStance()
    returnStance = false
    PlayerState.stance = 0
end

---Crouch loop
local function crouchLoop()
    lib.requestAnimSet('move_ped_crouched')
    SetPedStealthMovement(cache.ped, false, 0)
    SetPedMovementClipset(cache.ped, 'move_ped_crouched', 1.0)
    SetPedWeaponMovementClipset(cache.ped, 'move_ped_crouched')
    SetPedStrafeClipset(cache.ped, 'move_ped_crouched_strafing')
    SetPedCanPlayAmbientAnims(cache.ped, false)
    SetPedCanPlayAmbientBaseAnims(cache.ped, false)

    CreateThread(function()
        while PlayerState.stance == 2 do
            Wait(0)

            if cache.vehicle then
                resetStance()
                break
            end

            if IsPedFalling(cache.ped) then
                resetStance()
                break
            end

            if IsPedJumping(cache.ped) then
                resetStance()
                break
            end

            if IsAimCamActive() then
                SetPedMaxMoveBlendRatio(cache.ped, 0.2)
            end

            if IsPedUsingActionMode(cache.ped) then
                SetPedUsingActionMode(cache.ped, false, -1, 'DEFAULT_ACTION')
            end

            SetPedCanPlayAmbientIdles(cache.ped, true, false)
        end

        local walkstyle = PlayerState.walkstyle

        if not walkstyle then
            ResetPedMovementClipset(cache.ped, 1.0)
        else
            lib.requestAnimSet(walkstyle, 1000)
            SetPedMovementClipset(cache.ped, walkstyle, 1.0)
            RemoveAnimSet(walkstyle)
        end

        ResetPedWeaponMovementClipset(cache.ped)
        ResetPedStrafeClipset(cache.ped)
        SetPedMaxMoveBlendRatio(cache.ped, 1.0)
        SetPedCanPlayAmbientAnims(cache.ped, true)
        SetPedCanPlayAmbientBaseAnims(cache.ped, true)
        RemoveAnimSet('move_ped_crouched')
    end)
end

AddStateBagChangeHandler('stance', nil, function(_, _, value)
    if value == 0 then
        SetPedStealthMovement(cache.ped, false, 0)
    elseif value == 1 then
        SetPedStealthMovement(cache.ped, true, 0)
    elseif value == 2 then
        crouchLoop()
    end
end)

lib.addKeybind({
    name = 'stanceKey',
    description = not Config.useCrouchOnly and locale('stance') or locale('crouch'),
    defaultKey = Config.stanceKey,
    onPressed = function()
        if PlayerState.isLimited or cache.vehicle then return end

        disableStanceControls()

        local stanceLevel = PlayerState.stance

        if returnStance then
            stanceLevel -= 1

            if Config.useCrouchOnly and stanceLevel == 1 then stanceLevel = 0 end
            if stanceLevel == 0 then returnStance = false end
        else
            stanceLevel += 1

            if Config.useCrouchOnly and stanceLevel == 1 then stanceLevel = 2 end
            if stanceLevel == 2 then returnStance = true end
        end

        PlayerState.stance = stanceLevel
    end
})