# Add Emotes To Menu

Add multiple emotes to the menu
```lua
TriggerEvent('scully_emotemenu:addEmotesToMenu', 'Animal Emotes', {
    {
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
    },
    {
        Label = 'Beg (big dog)',
        Command = 'bdogbeg',
        Animation = 'beg_loop',
        Dictionary = 'creatures@rottweiler@tricks@',
        Options = {
            Flags = {
                Loop = true,
            },
        },
        PedTypes = {'big_dogs'},
    }
})
```