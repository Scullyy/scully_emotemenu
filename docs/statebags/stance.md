# Stance

Set or check the players stance mode.
```lua
-- Set Stance
LocalPlayer.state:set('stance', 0, false) -- Set Normal Stance
LocalPlayer.state:set('stance', 1, false) -- Set Stealth Stance
LocalPlayer.state:set('stance', 2, false) -- Set Crouch Stance

-- Check Stance
local isInNormalStance = LocalPlayer.state.stance == 0
local isInStealthStance = LocalPlayer.state.stance == 1
local isInCrouchStance = LocalPlayer.state.stance == 2
```