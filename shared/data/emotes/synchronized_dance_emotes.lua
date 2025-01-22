local options = {}
local emotes = lib.load('shared.data.emotes.dance_emotes')

emotes = lib.table.deepclone(emotes)

for i = 1, #emotes.options do
    local emote = emotes.options[i]

    emote.Command = 's' .. emote.Command

    if not emote.Options then emote.Options = {} end

    emote.Options.Shared = { OtherEmote = emote.Command }
    emote.Synchronized = true
    options[i] = emote
end

return {
    name = 'Synchronized Dance Emotes',
    icon = 'fa-solid fa-people-pulling',
    options = options
}