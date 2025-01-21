# Add Emote To Menu

Add an emote to the menu
```lua
TriggerEvent('scully_emotemenu:addEmoteToMenu', 'Animal Emotes', {
    Label = 'Bark (big dog)',
    Command = 'bdogbark',
    Animation = 'idle_a',
    Dictionary = 'creatures@rottweiler@amb@world_dog_barking@idle_a',
    Options = {
        Flags = {
            Loop = true,
        },
    },
    PedTypes = {'big_dogs'},
})
```