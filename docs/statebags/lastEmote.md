# Get Last Emote

Get the last emote a player used
```lua
local playerState = LocalPlayer.state
local lastEmote = playerState.lastEmote

if lastEmote then
    local emote = lastEmote[1]
    local variant = lastEmote[2]
end
```