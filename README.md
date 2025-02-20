<img src='https://forum-cfx-re.akamaized.net/original/5X/2/c/6/3/2c6328a77cd53d782dd2b0860655df168bcc7922.png' width='750'>

# Previews
<img src='https://i.gyazo.com/df3b88e92beb3237380f17b1cfa6111d.png'><img src='https://i.gyazo.com/7e4d600d326f6fbde2be1d003abebb74.png'><img src='https://i.gyazo.com/42096b2c983e8145557a148c6d5b6819.png'>

# Support:

For support join my discord here: https://discord.gg/scully

# Installation Instructions:

- Drag the resource into your `resources` folder
- Configure the `scully_emotemenu.cfg` to your liking
- Move the `scully_emotemenu.cfg` to the same location as your `server.cfg`
- Add `exec scully_emotemenu.cfg` to the top of your `server.cfg`
- Add `ensure scully_emotemenu` to your `server.cfg`

# Requirements

- [ox_lib](https://github.com/overextended/ox_lib/releases)

# Features

- Translation support

- Search option

- Custom emotes

- Prop emotes with props that spawn on the client via state bags

- Consumable emotes

- Animal emotes

- Synchronized emotes (including dances)

- Synchronized particle effects with optional automated feature and color support

- Ability to hide certain menus along with NSFW, gang and social movement emotes

- Easy to understand configuration file

- Exports, state bags and events to integrate within other resources

- Walk styles and facial expressions that save

- Prop variation support

- Hands up, pointing and stance system with a config option included to change it to a traditional crouch system

- Ability to hide emotes from the menu

- Commands

- Emote binding

- Ability to have multiple emotes within an option to play a random one when selected

- Ability to make certain synchronized emotes skip the request

- Ability to add walk styles and expressions to your radial menu

- Emote preview system by holding `E` while selecting an emote

- Placement system to choose where you do certain emotes

- Walk styles can't be abused to run faster

# State Bags
| State Bag Name | Replicated | Description |
| ------------- | ------------- | ------------- |
| [allowNSFWEmotes](docs/statebags/allowNSFWEmotes.md) | Yes | Toggle if the player can use NSFW emotes or not |
| [expression](docs/statebags/expression.md) | Yes | Get the players current expression |
| [handsup](docs/statebags/handsup.md) | No | Check if the player has their hands up |
| [inSynchronizedEmote](docs/statebags/inSynchronizedEmote.md) | Yes | Check if the player is in a synchronized emote |
| [isInEmote](docs/statebags/isInEmote.md) | Yes | Check if the player is in an emote |
| [isLimited](docs/statebags/isLimited.md) | Yes | Check if the player is currently limited |
| [lastEmote](docs/statebags/lastEmote.md) | No | Get the last emote a player used |
| [stance](docs/statebags/stance.md) | No | Set or check the players stance mode |
| [walkstyle](docs/statebags/walkstyle.md) | Yes | Get the players current walk style |

# Exports

| Export Name | Parameter(s) | Type | Description |
| ------------- | ------------- | ------------- | ------------- |
| [toggleMenu](docs/exports/client/toggleMenu.md) | None | Client | Toggle the emote menu |
| [closeMenu](docs/exports/client/closeMenu.md) | None | Client | Close the emote menu |
| [addEmoteMenuOption](docs/exports/client/addEmoteMenuOption.md) | Table | Client | Add a new menu option to the emote menu |
| [isInEmote](docs/exports/client/isInEmote.md) | None | Client | Check if the player is in an emote |
| [getLastEmote](docs/exports/client/getLastEmote.md) | None | Client | Get the last emote a player used |
| [playEmote](docs/exports/client/playEmote.md) | Table, Number? | Client | Play an emote or scenario |
| [cancelEmote](docs/exports/client/cancelEmote.md) | Boolean? | Client | Cancel an emote or scenario |
| [playEmoteByCommand](docs/exports/client/playEmoteByCommand.md) | String, Number? | Client | Play an emote by command |
| [getCurrentWalk](docs/exports/client/getCurrentWalk.md) | None | Client | Get the players current walk style |
| [setWalk](docs/exports/client/setWalk.md) | String | Client | Set the players current walk style |
| [resetWalk](docs/exports/client/resetWalk.md) | None | Client | Reset the players walk style |
| [setWalkByCommand](docs/exports/client/setWalkByCommand.md) | String | Client | Set the players current walk style using the command |
| [getCurrentExpression](docs/exports/client/getCurrentExpression.md) | None | Client | Get the players current expression |
| [setExpression](docs/exports/client/setExpression.md) | String | Client | Set the players current expression |
| [resetExpression](docs/exports/client/resetExpression.md) | None | Client | Reset the players expression |
| [setExpressionByCommand](docs/exports/client/setExpressionByCommand.md) | String | Client | Set the players current expression using the command |
| [registerEmote](docs/exports/client/registerEmote.md) | Table | Client | Register emotes to be used within external resources |
| [playRegisteredEmote](docs/exports/client/playRegisteredEmote.md) | String | Client | Play a registered emote |
| [getEmoteProps](docs/exports/client/getEmoteProps.md) | None | Client | Get a list of props from your current emote |
| [setLimitation](docs/exports/client/setLimitation.md) | Boolean | Client | Toggle player limitations |
| [isLimited](docs/exports/client/isLimited.md) | None | Client | Check if the player is currently limited |
| [addEmoteToMenu](docs/exports/client/addEmoteToMenu.md) | String, Table | Client | Add an emote to the menu |
| [addEmotesToMenu](docs/exports/client/addEmotesToMenu.md) | String, Table | Client | Add multiple emotes to the menu |
| [customNotifyFn](docs/exports/client/customNotifyFn.md) | Function | Client | Change the notification system |

# Events

| Event Name | Parameter(s) | Type | Description |
| ------------- | ------------- | ------------- | ------------- |
| [scully_emotemenu:toggleMenu](docs/events/client/toggleMenu.md) | None | Client | Toggle the emote menu |
| [scully_emotemenu:closeMenu](docs/events/client/closeMenu.md) | None | Client | Close the emote menu |
| [scully_emotemenu:addEmoteMenuOption](docs/events/client/addEmoteMenuOption.md) | Table | Client | Add a new menu option to the emote menu |
| [scully_emotemenu:playEmote](docs/events/client/playEmote.md) | Table, Number? | Client | Play an emote or scenario |
| [scully_emotemenu:cancelEmote](docs/events/client/cancelEmote.md) | Boolean? | Client | Cancel an emote or scenario |
| [scully_emotemenu:playEmoteByCommand](docs/events/client/playEmoteByCommand.md) | String, Number? | Client | Play an emote by command |
| [scully_emotemenu:setWalk](docs/events/client/setWalk.md) | String | Client | Set the players current walk style |
| [scully_emotemenu:resetWalk](docs/events/client/resetWalk.md) | None | Client | Reset the players walk style |
| [scully_emotemenu:setWalkByCommand](docs/events/client/setWalkByCommand.md) | String | Client | Set the players current walk style using the command |
| [scully_emotemenu:setExpression](docs/events/client/setExpression.md) | String | Client | Set the players current expression |
| [scully_emotemenu:resetExpression](docs/events/client/resetExpression.md) | None | Client | Reset the players expression |
| [scully_emotemenu:setExpressionByCommand](docs/events/client/setExpressionByCommand.md) | String | Client | Set the players current expression using the command |
| [scully_emotemenu:registerEmote](docs/events/client/registerEmote.md) | Table | Client | Register emotes to be used within external resources |
| [scully_emotemenu:playRegisteredEmote](docs/events/client/playRegisteredEmote.md) | String | Client | Play a registered emote |
| [scully_emotemenu:setLimitation](docs/events/client/setLimitation.md) | Boolean | Client | Toggle player limitations |
| [scully_emotemenu:addEmoteToMenu](docs/events/client/addEmoteToMenu.md) | String, Table | Client | Add an emote to the menu |
| [scully_emotemenu:addEmotesToMenu](docs/events/client/addEmotesToMenu.md) | String, Table | Client | Add multiple emotes to the menu |

# Keybinds

**Important Note:**

By default the configured keybinds in the *initial* scully_emotemenu.cfg will be the default keys, however once the keybinds are set for a player, they'll stay and editing the keybinds in the config will change them for new players only. Previous players can set their own keybinds within `Esc > settings > keybinds > fivem`.

# Emote Binds

Players can bind emotes by opening the keybinds sub menu. Each option within the sub menu is binded to a key within `Esc > settings > keybinds > fivem` that your players can change to their own preferred keys to play emotes.

# Custom Emotes

You can add custom emotes to the menu by using the `addEmoteToMenu` and `addEmotesToMenu` exports or events. If you want to add a whole new custom section to the emote options submenu you can also use the `addEmoteMenuOption` export or event.

# Additional Emote Options

<details>
<summary>NSFW</summary>
<br>

**Key:** `NSFW = true`
<br>

**Description:** NSFW emotes are any emote that wouldn't be considered safe for anyone under the age of 18 to see, if you don't run an 18+ community I suggest keeping the `EnableNSFWEmotes` config option as false which will disable all emotes with this added. You can also set `EnableNSFWEmotes` to `'limited'` which will make it so a state bag needs to be set so NSFW emotes can be used. Info on the export can be found [here](docs/statebags/allowNSFWEmotes.md) and I would personally suggest making it so the emotes can only be used when inside a house or apartment.
</details>

<details>
<summary>Gang</summary>
<br>

**Key:** `Gang = true`
<br>

**Description:** Gang emotes are emotes that can be used to identify your affiliation with a certain group, these emotes can be disrespectful to certain people or cause controversial topics to arise so a config option was added to prevent such a thing from happening which will disable all emotes with this added.
</details>

<details>
<summary>SocialMovement</summary>
<br>

**Key:** `SocialMovement = true`
<br>

**Description:** The social movement emotes are any kind of emote that represents a group who advocates for change in society such as the LGBTQ and BLM emotes in which their communities advocate for liberation, some communities might feel as if people will use them in an ironic manner or to troll which would be disrespectful and some servers might be based in countries where it is shunned due to their religion so a config option was implemented to respect both these communities and religious beliefs which will disable all emotes with this added.
</details>

<details>
<summary>Hide</summary>
<br>

**Key:** `Hide = true`
<br>

**Description:** If you would like to hide an emote from the menu and have it only accessible by commands, exports or events you can add this to the emote table.
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

**Key:** `PedTypes = {'small_dogs', 'big_dogs', 'cats', 'birds', 'marine_mammals', 'rodents', 'land_mammals', 'aquatic_animals'}`
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

<details>
<summary>Synchronized</summary>
<br>

**Key:** `Synchronized = true`
<br>

**Description:** If you would like an emote to be a synchronized emote add this to the emote table, keep in mind you'll also need to define the OtherEmote in the Options table.
</details>

# Disclaimer & Credits

All custom animations were added with permission from the creators. Credit to the following people for their animations / props:

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

We extend our heartfelt gratitude to everyone who played a part in shaping the project. Your involvement, regardless of the scale, has made a meaningful impact on the project's progress. We truly value the collaborative spirit and diverse skills that each contributor brings to the table. Thank you all for your contributions.