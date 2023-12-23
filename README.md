<img src='https://cdn.discordapp.com/attachments/1026222009060958279/1047036407731990568/image.png' width='750'>

# Previews
<img src='https://i.gyazo.com/80de82f9bd0574019069925b7ee64cf2.png'><img src='https://i.gyazo.com/7ee2779f736b3ddb88e6e40d7db46597.png'>

# Support:

For support join my discord here: https://discord.gg/scully

# Installation Instructions:

* add `ensure scully_emotemenu` to your `server.cfg`

# Requirements

- [ox_lib](https://github.com/overextended/ox_lib/releases)

# Features

- Over 20 translations

- Search option

- Custom animations

- Prop emotes

- Consumable emotes

- Animal emotes

- Synchronized animations

- Synchronized particle effects with optional automated feature and color support

- Ability to hide certain menus along with NSFW, gang and social movement emotes

- Easy to understand configuration file

- Exports and events to integrate within other resources

- Walk styles that save

- Prop variation support

- Hands up, Pointing and crouching

- Ability to hide animations from the menu

- Commands

- Emote binding

- Ability to have multiple emotes within an option to play a random one when selected

- Ability to make certain synchronized emotes skip the request

- Ability to add walk styles and expressions to your radial menu

- Prop extractor for anticheat systems

- Emote preview system by holding `E` while selecting an emote

- Compatibility with QBCore events

- Ability to choose where you do your animation

# Exports

| Export Name | Parameter(s) | Type | Description |
| ------------- | ------------- | ------------- | ------------- |
| [toggleMenu](docs/exports/client/toggleMenu.md) | None | Client | Toggle the emote menu |
| [closeMenu](docs/exports/client/closeMenu.md) | None | Client | Close the emote menu |
| [getCurrentExpression](docs/exports/client/getCurrentExpression.md) | None | Client | Get the players current expression |
| [setExpression](docs/exports/client/setExpression.md) | String (Expression Name) | Client | Set the players expression |
| [resetExpression](docs/exports/client/resetExpression.md) | None | Client | Reset the players expression to default |
| [getCurrentWalk](docs/exports/client/getCurrentWalk.md) | None | Client | Get the players current walk style |
| [setWalk](docs/exports/client/setWalk.md) | String (Walk Name) | Client | Set the players walk style |
| [resetWalk](docs/exports/client/resetWalk.md) | None | Client | Reset the players walk style to default |
| [isInEmote](docs/exports/client/isInEmote.md) | None | Client | Check if the player is currently playing an animation |
| [getLastEmote](docs/exports/client/getLastEmote.md) | None | Client | Get the emote a player last used |
| [registerEmote](docs/exports/client/registerEmote.md) | Table (Emote Data) | Client | Register an animation from an external resource |
| [playRegisteredEmote](docs/exports/client/playRegisteredEmote.md) | String (Emote Name) | Client | Play a registered animation |
| [playEmote](docs/exports/client/playEmote.md) | Table (Emote Data), Number (Variant) | Client | Play an animation |
| [playEmoteByCommand](docs/exports/client/playEmoteByCommand.md) | String (Emote Command), Number (Variant) | Client | Play an animation using the command |
| [cancelEmote](docs/exports/client/cancelEmote.md) | None | Client | Stop playing an animation |
| [isLimited](docs/exports/client/isLimited.md) | None | Client | Check if the player is currently limited |
| [setLimitation](docs/exports/client/setLimitation.md) | Boolean (Limited) | Client | Toggle player limitations |
| [listEmotes](docs/exports/client/listEmotes.md) | String (Emote Type) | Client | List emotes from any category |
| [customNotifyFn](docs/exports/client/customNotifyFn.md) | Function (Emote Notification) | Client | Set a custom notification function |
| [customHelpAlertFn](docs/exports/client/customHelpAlertFn.md) | Function (Emote Help Alert) | Client | Set a custom help alert function |

# Events

| Event Name | Parameter(s) | Type | Description |
| ------------- | ------------- | ------------- | ------------- |
| [scully_emotemenu:toggleMenu](docs/exports/client/toggleMenu.md) | None | Client | Toggle the animation menu |
| [scully_emotemenu:closeMenu](docs/exports/client/closeMenu.md) | None | Client | Close the animation menu |
| [scully_emotemenu:setExpression](docs/exports/client/setExpression.md) | String (Expression Name) | Client | Set the players expression |
| [scully_emotemenu:resetExpression](docs/exports/client/resetExpression.md) | None | Client | Reset the players expression to default |
| [scully_emotemenu:setWalk](docs/exports/client/setWalk.md) | String (Walk Name) | Client | Set the players walk style |
| [scully_emotemenu:resetWalk](docs/exports/client/resetWalk.md) | None | Client | Reset the players walk style to default |
| [scully_emotemenu:registerEmote](docs/exports/client/registerEmote.md) | Table (Emote Data) | Client | Register an animation from an external resource |
| [scully_emotemenu:playRegisteredEmote](docs/exports/client/playRegisteredEmote.md) | String (Emote Name) | Client | Play a registered animation |
| [scully_emotemenu:play](docs/exports/client/play.md) | Table (Emote Data), Number (Variant) | Client | Play an animation |
| [scully_emotemenu:playByCommand](docs/exports/client/playByCommand.md) | String (Emote Command), Number (Variant) | Client | Play an animation using the command |
| [scully_emotemenu:cancelAnimation](docs/exports/client/cancelAnimation.md) | None | Client | Stop playing an animation |
| [scully_emotemenu:toggleLimitation](docs/exports/client/toggleLimitation.md) | Boolean (Limited) | Client | Toggle player limitations |
| [scully_emotemenu:listEmotes](docs/exports/client/listEmotes.md) | String (Emote Type) | Client | List emotes from any category |

# Keybinds

**Important Note:**

By default the configured keybinds in the *initial* config.lua will be the default keys, however once the keybinds are set for a player, they'll stay and editing the keybinds in the config will change them for new players only. Previous players can set their own keybinds within `Esc > settings > keybinds > fivem`.

# Emote Binds

To use emote binds you need to have the `EnableEmoteBinds` option enabled in the config.lua, this will allow your players to bind emotes by opening the keybinds sub menu. Each option within the sub menu is binded to a key within `Esc > settings > keybinds > fivem` that your players can change to their own preferred keys to play emotes.

# Prop Extractor

We've addressed concerns about anticheat scripts causing unintended bans or kicks by introducing a prop extractor config option. This automates the creation of a `prop_dump.lua` file in the resource folder, making it easier for server owners to manage props and mitigate false positives in the anticheat system. This enhancement aims to create a more secure and fair gaming environment for community members.

# Additional Animation Options

<details>
<summary>NSFW</summary>
<br>

**Key:** `NSFW = true`
<br>

**Description:** NSFW animations are any animation that wouldn't be considered safe for anyone under the age of 18 to see, if you don't run an 18+ community I suggest keeping the `EnableNSFWEmotes` config option as false which will disable all animations with this added. You can also set `EnableNSFWEmotes` to `'limited'` which will make it so a state bag needs to be set so NSFW animations can be used. Info on the export can be found [here](docs/statebags/allowNSFWEmotes.md) and I would personally suggest making it so the animations can only be used when inside a house or apartment.
</details>

<details>
<summary>Gang</summary>
<br>

**Key:** `Gang = true`
<br>

**Description:** Gang animations are animations that can be used to identify your affiliation with a certain group, these animations can be disrespectful to certain people or cause controversial topics to arise so a config option was added to prevent such a thing from happening which will disable all animations with this added.
</details>

<details>
<summary>SocialMovement</summary>
<br>

**Key:** `SocialMovement = true`
<br>

**Description:** The social movement animations are any kind of animation that represents a group who advocates for change in society such as the LGBTQ and BLM animations in which their communities advocate for liberation, some communities might feel as if people will use them in an ironic manner or to troll which would be disrespectful and some servers might be based in countries where it is shunned due to their bigoted religion so a config option was implemented to respect both these communities and religious beliefs which will disable all animations with this added.
</details>

<details>
<summary>Hide</summary>
<br>

**Key:** `Hide = true`
<br>

**Description:** If you would like to hide an animation from the menu and have it only accessible by commands, exports or events you can add this to the emote table.
</details>

<details>
<summary>BlockBinding</summary>
<br>

**Key:** `BlockBinding = true`
<br>

**Description:** If you would like to prevent a player from using the menu to bind a certain emote you can add this to the emote table. Keep in mind they can still bind using Cfx's `rbind` console command.
</details>

<details>
<summary>Auto</summary>
<br>

**Key:** `Auto = true`
<br>

**Description:** If you would like particles to automatically play you can add this to the PTFX table within the emote table, you will need to have the `EnableAutoPtfx` config enabled for this to work.
</details>

<details>
<summary>SkipRequest</summary>
<br>

**Key:** `SkipRequest = true`
<br>

**Description:** If you would like a shared emote to play without needing to request it you can add this to the emote table.
</details>

<details>
<summary>PedTypes</summary>
<br>

**Key:** `PedTypes = {'dogs', 'cats', 'birds', 'marine_mammals', 'rodents', 'land_mammals', 'aquatic_animals'}`
<br>

**Description:** If you would like an emote to require a certain ped type you can add this to the emote table.
</details>

<details>
<summary>Placement</summary>
<br>

**Key:** `Placement = true`
<br>

**Description:** If you would like to be able to select the location of your emote you can add this to the emote table.
</details>

# Disclaimer & Credits

All custom animations were added with permission from the creators. Credit to the following people for their animations / props and Dulpear for providing the original project that this is inspired by:

- [Dullpear_dev](https://forum.cfx.re/u/dullpear_dev/summary)

- [EP](https://github.com/EpKouhia)

- [SMGMissy](https://forum.cfx.re/u/smgmissy/)

- [Ultrahacx](https://forum.cfx.re/u/ultrahacx/summary)

- [Struggleville](https://www.gta5-mods.com/users/struggleville)

- [BzZzi](https://forum.cfx.re/u/bzzzi/summary)

- [Natty3d](https://forum.cfx.re/u/natty3d/summary)

- [Sam](https://www.lcpdfr.com/profile/12-sam/)

- [Eaglee](https://www.gta5-mods.com/users/Eaglee)

- [Steph21](https://www.gta5-mods.com/users/Steph21)

- [Qpaccy](https://www.gta5-mods.com/users/Qpaccy)

- [SapphireMods](https://www.gta5-mods.com/users/SapphireMods)

- [MissySnowie](https://www.gta5-mods.com/users/MissySnowie)

- [-Moses-](https://www.gta5-mods.com/users/-moses-)

- [BoringNeptune](https://www.gta5-mods.com/users/BoringNeptune)

- [Molllyyy](https://forum.cfx.re/u/molllyyy/summary)

- [LittleSpoon](https://discord.gg/safeword)

- [Baspel](https://discord.gg/PpAHBCMW97)

- [Sharror](https://discord.gg/sharror)

- [Pupppy](https://discord.gg/3fUwtQW54b)

- [QueenSisters](https://www.gta5-mods.com/users/Queens%20Sister)

- [Crunchycat](https://www.gta5-mods.com/users/crunchycat)

We extend our heartfelt gratitude to everyone who played a part in shaping the project, including the valuable contributions from:

- [FjamZoo](https://github.com/FjamZoo)
- [Snipe](https://github.com/snipe-scripts)

Your involvement, regardless of the scale, has made a meaningful impact on the project's progress. We truly value the collaborative spirit and diverse skills that each contributor brings to the table. Thank you all for your contributions.
