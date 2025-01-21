# Stance

Set or check the players stance mode
```lua
local playerState = LocalPlayer.state
-- Set Stance
playerState.stance = 0 -- Set Normal Stance
playerState.stance = 1 -- Set Stealth Stance
playerState.stance = 2 -- Set Crouch Stance

-- Check Stance
local isInNormalStance = playerState.stance == 0
local isInStealthStance = playerState.stance == 1
local isInCrouchStance = playerState.stance == 2
```