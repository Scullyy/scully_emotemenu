# Custom Notification Function

You can use the below export to set a custom notification function to make your changes update proof.
```lua
local function customEmoteNotification(_type, text)
    if _type == 'error' then
        print('^1ERROR: ' .. text)
    else
        print('^2SUCCESS: ' .. text)
    end
end

exports.scully_emotemenu:customNotifyFn(customEmoteNotification)
```
