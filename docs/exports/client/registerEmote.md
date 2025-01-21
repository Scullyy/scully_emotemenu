# Register Emote

Register emotes to be used within external resources
```lua
local scully_emotemenu = exports.scully_emotemenu

scully_emotemenu:registerEmote({
    Name = 'shrug',
    Animation = 'gesture_shrug_hard',
    Dictionary = 'gestures@f@standing@casual',
    Options = {
        Duration = 1000,
        Flags = {
            Move = true,
        }
    }
})
```