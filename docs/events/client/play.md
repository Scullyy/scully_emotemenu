# Play

Play an animation.
```lua
local EmoteData = {
    Label = 'Leaning With Phone',
    Command = 'leanphone',
    Animation = 'base',
    Dictionary = 'amb@world_human_leaning@male@wall@back@mobile@base',
    Options = {
        Flags = {
            Loop = true
        },
        Props = {
            {
                Bone = 28422,
                Name = 'prop_phone_ing',
                Placement = {
                    vector3(0.000000, 0.000000, 0.000000),
                    vector3(0.000000, 0.000000, 0.000000),
                },
                Variant = 0,
                Variations = {0, 1, 2, 3, 4, 5, 6, 7}
            }
        }
    }
}

TriggerClientEvent('scully_emotemenu:play', source, EmoteData, EmoteData.Variant) -- Variant is optional.
```