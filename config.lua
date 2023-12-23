Config = {
    -- You can change the language of the menu here. Available languages can be found in the locales folder.
    Language = 'en',
    -- You can disable the search option here.
    EnableSearch = true,
    -- You can disable prop dumps here.
    EnablePropDump = true,
    -- You can disable the emote preview feature here.
    EnableEmotePreview = true,
    -- You can disable the emote position selector on emotes with the Placement flag here.
    EnableEmotePlacement = true,
    -- You can disable the emote binds option here.
    EnableEmoteBinds = true,
    -- Block players from using weapons while doing an emote.
    EnableWeaponBlock = false,
    -- Block players from aiming and shooting while doing an emote.
    EnableAimShootBlock = true,
    -- Set this to '' to disable the key.
    CancelEmoteKey = 'x', -- List of keys here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- Set this to '' to disable the key.
    HandsUpKey = 'h', -- List of keys here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- Set this to '' to disable the key.
    StanceKey = 'c', -- List of keys here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- Set this to '' to disable the key.
    PointKey = 'b', -- List of keys here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- Set this if you really wanna disable emotes in vehicles, if enabled they only play the upper body part of the emote.
    AllowedInVehicles = true,
    -- Cooldown in milliseconds between doing emotes.
    EmoteCooldown = 500,
    -- Commands to play an emote.
    EmotePlayCommands = {'e', 'emote', 'eplay'},
    -- Commands to set a walk style.
    WalkSetCommands = {'w', 'walk'},
    -- Commands to open the menu.
    MenuOpenCommands = {'em', 'emotemenu'},
    -- Set this to '' to disable the key.
    MenuKeybind = 'f5', -- List of keys here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can change the menu position here.
    MenuPosition = 'top-right', -- (top-left, top-right, bottom-left, bottom-right)
    -- You can change the notification position here
    NotificationPosition = 'top', -- (top, bottom, top-left, top-right, bottom-left, bottom-right)
    -- You can change the help alert position here
    HelpAlertPosition = 'right-center', -- (right-center, left-center, top-center)
    -- Set this to '' to disable the key.
    RagdollKeybind = 'u', -- List of keys here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- Set this to '' to disable the key.
    PtfxKeybind = 'g', -- List of keys here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can enable automated ptfx on emotes with the Auto flag here. 
    EnableAutoPtfx = false,
    -- You can enable the NSFW emotes here. Can be true, false or 'limited'
    EnableNSFWEmotes = false,
    -- You can enable the gang emotes here.
    EnableGangEmotes = false,
    -- You can enable the social movement emotes here.
    EnableSocialMovementEmotes = false,
    -- You can enable the consumable emotes here.
    EnableConsumableEmotes = false,
    -- You can enable the synchronized emotes here.
    EnableSynchronizedEmotes = false,
    -- You can enable the animal emotes here.
    EnableAnimalEmotes = false,
    -- You can enable radial menu usage here.
    EnableRadialMenu = false
}
