# Allow NSFW Emotes

Toggle if the player can use NSFW emotes or not. The EnableNSFWEmotes config option must be set to 'limited'.
```lua
-- Allow NSFW Emotes
LocalPlayer.state:set('allowNSFWEmotes', true, true)

-- Block NSFW Emotes
LocalPlayer.state:set('allowNSFWEmotes', false, true)
```