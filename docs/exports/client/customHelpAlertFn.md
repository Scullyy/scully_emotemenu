# Custom Help Alert Function

You can use the below export to set a custom help alert function to make your changes update proof.
```lua
local function customEmoteHelpAlert(icon, text)
    lib.showTextUI(text, {
        position = 'right-center',
        icon = icon,
        style = {
            borderRadius = 3,
            backgroundColor = '#141517',
            color = 'white'
        }
    })
end

exports.scully_emotemenu:customHelpAlertFn(customEmoteHelpAlert)
```
