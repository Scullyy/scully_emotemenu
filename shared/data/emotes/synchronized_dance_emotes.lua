local options = {}
local emotes = require 'shared.data.emotes.dance_emotes'

for i = 1, #emotes.options do
    local emote = emotes.options[i]

    emote.Command = 's' .. emote.Command

    if not emote.Options then emote.Options = {} end

    emote.Options.Shared = { OtherAnimation = emote.Command }
    emote.Synchronized = true
    options[i] = emote
end

return {
    name = 'Synchronized Dance Emotes',
    icon = 'fa-solid fa-people-pulling',
    options = options
}