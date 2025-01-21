# Add Emote Menu Option

Add a new menu option to the emote menu
```lua
TriggerEvent('scully_emotemenu:addEmoteMenuOption', {
    name = 'Animal Emotes',
    icon = 'fa-solid fa-dog',
    options = {
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
        }
    }
})
```