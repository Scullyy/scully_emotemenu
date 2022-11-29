# Play By Command

Play an animation by the command, this can be done in two ways.
```lua
local variant = 0

-- Export Method
exports.scully_emotemenu:PlayByCommand('leanphone', variant) -- Variant is optional.

-- Native Method
ExecuteCommand(('e leanphone %s'):format(variant)) -- Variant is optional.
```