# Play Emote By Command

Play an emote by the command, this can be done in two ways.
```lua
local variant = 0

-- Export Method
exports.scully_emotemenu:playEmoteByCommand('leanphone', variant) -- Variant is optional.

-- Native Method
ExecuteCommand(('e leanphone %s'):format(variant)) -- Variant is optional.
```