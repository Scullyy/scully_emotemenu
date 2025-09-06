# Trigger when emote cancelled

Add a trigger when emote cancelled 
How to listen:
```lua
NetRegisterEvent('scully_emotemenu:emoteCancelled', function()
    print('Emote is cancelled')
end)
```