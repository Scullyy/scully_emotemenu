# Custom Notification Function

Change the notification system
```lua
local scully_emotemenu = exports.scully_emotemenu

local function customEmoteNotification(_type, text)
    if _type == 'error' then
        print('^1ERROR: ' .. text)
    else
        print('^2SUCCESS: ' .. text)
    end
end

scully_emotemenu:customNotifyFn(customEmoteNotification)
```