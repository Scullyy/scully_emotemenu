# Get Emote Props

Get a list of props from your current emote
```lua
local scully_emotemenu = exports.scully_emotemenu
local emoteProps = scully_emotemenu:getEmoteProps()

if emoteProps then
    for i = 1, #emoteProps do
        local prop = emoteProps[i]
        local entity = prop.entity
        local hasPtfx = prop.hasPtfx

        if hasPtfx then
            SetEntityAlpha(entity, 200, false)
        end
    end
end
```