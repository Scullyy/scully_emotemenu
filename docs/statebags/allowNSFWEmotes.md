# Allow NSFW Emotes

Toggle if the player can use NSFW emotes or not. The enableNSFWEmotes cfg option must be set to "limited"
```lua
local playerState = LocalPlayer.state

-- Allow NSFW Emotes
playerState:set('allowNSFWEmotes', true, true)

-- Block NSFW Emotes
playerState:set('allowNSFWEmotes', false, true)
```