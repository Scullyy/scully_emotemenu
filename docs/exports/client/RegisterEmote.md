# Register Emote

Register an animation to be used within other resources and excluded from the menu / commands.
```lua
exports.scully_emotemenu:RegisterEmote({
    Name = 'shrug',
    Type = 'Emotes',
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