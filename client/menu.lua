local mainMenuOptions = {
    {
        type = 'submenu',
        id = 'emotemenu_submenu_options',
        label = locale('emote_options'),
        options = {},
        settings = {
            controlDisablingForGamePadOnly = true
        }
    },
    {
        type = 'list',
        label = '🚶 ' .. locale('walking_styles'),
        description = '',
        list = {},
        onClick = function(index)
            SetWalk(Walks[index].Walk)
        end
    },
    {
        type = 'list',
        label = '🏌️ ' .. locale('scenarios'),
        description = '',
        list = {},
        onClick = function(index)
            PlayEmote(Scenarios[index])
        end
    },
    {
        type = 'list',
        label = '🤪 ' .. locale('facial_expressions'),
        description = '',
        list = {},
        onClick = function(index)
            SetExpression(Expressions[index].Expression)
        end
    },
    {
        type = 'list',
        label = '⛔ ' .. locale('cancel'),
        description = '',
        list = { locale('emote'), locale('walk_style'), locale('expression'), locale('all') },
        onClick = function(index)
            CreateThread(function()
                if index == 1 then
                    CancelEmote()
                elseif index == 2 then
                    ResetWalk()
                elseif index == 3 then
                    ResetExpression()
                elseif index == 4 then
                    CancelEmote()
                    ResetWalk()
                    ResetExpression()
                end
            end)
        end
    }
}

local preview = require 'client.modules.preview'

---Close the emote menu
function CloseMenu()
    MenuBuilder.close('emotemenu')
end
exports('closeMenu', CloseMenu)

---Toggle the emote menu
function ToggleMenu()
    if PlayerState.isLimited then return end

    if not MenuBuilder.IsAnyMenuOpen() then
        MenuBuilder.open('emotemenu')
    else
        CloseMenu()
    end
end
exports('toggleMenu', ToggleMenu)

local function bindEmoteToMenu(selected, input)
    query = string.lower(input)

    local bindEmote

    for i = 1, #Emotes do
        local emotes = Emotes[i]

        for k = 1, #emotes.options do
            local emote = emotes.options[k]

            if emote.Command == query then
                bindEmote = emote
                break
            end
        end

        if bindEmote then break end
    end

    if not bindEmote then
        Utils.notify('error', locale('not_valid_emote'))
        return
    end

    if bindEmote.BlockBinding then
        Utils.notify('error', locale('bind_blocked'))
        return
    end

    EmoteBinds[tostring(selected)] = bindEmote
    
    KVP.update('keybinds', EmoteBinds)
    Utils.notify('success', locale('bind_saved'))

    CloseMenu()
    RegisterMenu()
end

---Register the emote menu
function RegisterMenu()
    MenuBuilder.wipe()

    for i = 1, #mainMenuOptions do
        local option = mainMenuOptions[i]

        if i == 2 then
            for k = 1, #Walks do
                local walk = Walks[k]

                option.list[k] = walk.Label
            end
        elseif i == 3 then
            for k = 1, #Scenarios do
                local scenario = Scenarios[k]

                option.list[k] = scenario.Label
            end
        elseif i == 4 then
            for k = 1, #Expressions do
                local expression = Expressions[k]

                option.list[k] = expression.Label
            end
        end
    end

    local emoteMenuOptions = {
        {
            type = 'keyboard',
            label = locale('search'),
            description = locale('search_for_emotes'),
            keyboard = {
                title = locale('search'),
                max = 15
            },
            onInput = function(input)
                query = string.lower(input)
                
                local searchMenuOptions = {}

                for i = 1, #Emotes do
                    local submenu = Emotes[i]
                    local emotes = {}
                    local foundEmotes = {}
                    
                    for k = 1, #submenu.options do
                        local emote = submenu.options[k]
    
                        if not emote.Hide and (string.find(string.lower(emote.Label), query) or string.find(string.lower(emote.Command), query)) then
                            local index = #emotes + 1
                            local command = Config.emoteCommands[1]
    
                            emotes[index] = emote
                            foundEmotes[index] = {
                                type = 'select',
                                label = emote.Label,
                                description = ('/%s %s - %s'):format(command, emote.Command, locale('hold_to_preview')),
                                onClick = function(index)
                                    if Config.enableEmotePreview and IsControlPressed(0, 38) then
                                        preview.showEmote(emote)
                                        return
                                    end
            
                                    PlayEmote(emote)
                                end
                            }
                        end
                    end
    
                    if #foundEmotes > 0 then
                        searchMenuOptionsIndex = #searchMenuOptions + 1
                        searchMenuOptions[searchMenuOptionsIndex] = {
                            type = 'submenu',
                            id = 'emotemenu_temp_search_' .. searchMenuOptionsIndex,
                            label = submenu.name,
                            description = '',
                            options = foundEmotes
                        }
                    end
                end

                if #searchMenuOptions == 0 then
                    Utils.notify('error', locale('not_valid_emote'))
                    return
                end

                MenuBuilder.create({
                    id = 'emotemenu_temp_search',
                    temporary = 'emotemenu_submenu_options',
                    label = locale('search_results'),
                    description = '',
                    rightAlign = true,
                    options = searchMenuOptions,
                    settings = {
                        controlDisablingForGamePadOnly = true
                    }
                })

                MenuBuilder.close('emotemenu_submenu_options')
                MenuBuilder.open('emotemenu_temp_search')
            end
        }
    }

    if Config.enableEmoteBinds then
        local bindMenuOptions = {
            { label = locale('none'), description = locale('new_bind'), icon = 'fa-solid fa-1', args = { id = 'emotemenu_submenu_binds_new' } },
            { label = locale('none'), description = locale('new_bind'), icon = 'fa-solid fa-2', args = { id = 'emotemenu_submenu_binds_new' } },
            { label = locale('none'), description = locale('new_bind'), icon = 'fa-solid fa-3', args = { id = 'emotemenu_submenu_binds_new' } },
            { label = locale('none'), description = locale('new_bind'), icon = 'fa-solid fa-4', args = { id = 'emotemenu_submenu_binds_new' } },
            { label = locale('none'), description = locale('new_bind'), icon = 'fa-solid fa-5', args = { id = 'emotemenu_submenu_binds_new' } }
        }

        local bindMenuOptions = {
            {
                type = 'keyboard',
                label = '1. ' .. locale('none'),
                description = locale('new_bind'),
                keyboard = {
                    title = locale('emote_command_to_bind'),
                    max = 15
                },
                onInput = function(input)
                    bindEmoteToMenu(1, input)
                end
            },
            {
                type = 'keyboard',
                label = '2. ' .. locale('none'),
                description = locale('new_bind'),
                keyboard = {
                    title = locale('emote_command_to_bind'),
                    max = 15
                },
                onInput = function(input)
                    bindEmoteToMenu(2, input)
                end
            },
            {
                type = 'keyboard',
                label = '3. ' .. locale('none'),
                description = locale('new_bind'),
                keyboard = {
                    title = locale('emote_command_to_bind'),
                    max = 15
                },
                onInput = function(input)
                    bindEmoteToMenu(3, input)
                end
            },
            {
                type = 'keyboard',
                label = '4. ' .. locale('none'),
                description = locale('new_bind'),
                keyboard = {
                    title = locale('emote_command_to_bind'),
                    max = 15
                },
                onInput = function(input)
                    bindEmoteToMenu(4, input)
                end
            },
            {
                type = 'keyboard',
                label = '5. ' .. locale('none'),
                description = locale('new_bind'),
                keyboard = {
                    title = locale('emote_command_to_bind'),
                    max = 15
                },
                onInput = function(input)
                    bindEmoteToMenu(5, input)
                end
            }
        }

        for index, emote in pairs(EmoteBinds) do
            if emote then
                bindMenuOptions[tonumber(index)] = {
                    type = 'select',
                    label = index .. '. ' .. emote.Label,
                    description = locale('delete_bind'),
                    onClick = function()
                        EmoteBinds[tostring(index)] = nil
                        CloseMenu()
                        RegisterMenu()
                        
                        KVP.update('keybinds', EmoteBinds)
                        Utils.notify('success', locale('bind_deleted'))
                    end
                }
            end
        end

        emoteMenuOptions[2] = {
            type = 'submenu',
            id = 'emotemenu_submenu_binds',
            label = locale('keybinds'),
            options = bindMenuOptions,
            settings = {
                controlDisablingForGamePadOnly = true
            }
        }
    end

    Emotes = Utils.filterTable(Emotes, function(tbl, index)
        local option = tbl[index]
        local keepOption = true

        if option.name == 'Consumable Emotes' and not Config.enableConsumableEmotes then
            keepOption = false
        elseif option.name == 'Synchronized Emotes' and not Config.enableSynchronizedEmotes then
            keepOption = false
        elseif option.name == 'Synchronized Dance Emotes' and not Config.enableSynchronizedEmotes then
            keepOption = false
        elseif option.name == 'Animal Emotes' and not Config.enableAnimalEmotes then
            keepOption = false
        end

        return keepOption
    end)

    for i = 1, #Emotes do
        local submenu = Emotes[i]

        submenu.options = Utils.filterTable(submenu.options, function(tbl, index)
            local emote = tbl[index]
            local keepEmote = true

            if not DoesAnimDictExist(emote.Dictionary) then
                keepEmote = false
            elseif emote?.Options?.Props then
                local props = emote.Options.Props

                for k = 1, #props do
                    if not IsModelValid(joaat(props[k].Name)) then
                        keepEmote = false
                        break
                    end
                end
            end

            if emote.NSFW and Config.enableNSFWEmotes == 'false' then
                keepEmote = false
            elseif emote.Gang and not Config.enableGangEmotes then
                keepEmote = false
            elseif emote.SocialMovement and not Config.enableSocialMovementEmotes then
                keepEmote = false
            end

            return keepEmote
        end)

        local emotes = {}
        local emoteOptions = {}

        for k = 1, #submenu.options do
            local emote = submenu.options[k]

            if not emote.Hide then
                local index = #emotes + 1
                local command = Config.emoteCommands[1]

                emotes[index] = emote
                emoteOptions[index] = {
                    type = 'select',
                    label = emote.Label,
                    description = ('/%s %s - %s'):format(command, emote.Command, locale('hold_to_preview')),
                    onClick = function(index)
                        if Config.enableEmotePreview and IsControlPressed(0, 38) then
                            preview.showEmote(emote)
                            return
                        end

                        PlayEmote(emote)
                    end
                }
            end
        end

        local emoteMenuOptionsIndex = #emoteMenuOptions + 1

        emoteMenuOptions[emoteMenuOptionsIndex] = {
            type = 'submenu',
            id = 'emotemenu_submenu_options_' .. emoteMenuOptionsIndex,
            label = submenu.name,
            description = '',
            options = emoteOptions
        }
    end

    mainMenuOptions[1].options = emoteMenuOptions

    MenuBuilder.create({
        id = 'emotemenu',
        label = locale('emote_menu'),
        description = locale('emote_menu'),
        rightAlign = true,
        options = mainMenuOptions,
        settings = {
            controlDisablingForGamePadOnly = true
        }
    })
end

---Add a new menu option to the emote menu
function AddEmoteMenuOption(data)
    Emotes[#Emotes + 1] = data

    RegisterMenu()
end
exports('addEmoteMenuOption', AddEmoteMenuOption)

for i = 1, #Config.menuCommands do
    Utils.addCommand(Config.menuCommands[i], {
        help = locale('open_emote_menu')
    }, function(source, args, raw)
        ToggleMenu()
    end)
end

if Config.menuKeybind ~= '' then
    if #Config.menuCommands > 0 then
        RegisterKeyMapping(Config.menuCommands[1], locale('open_emote_menu'), 'keyboard', Config.menuKeybind)
    end
end

CreateThread(function()
    Wait(1000)
    
    RegisterMenu()

    if Config.enableRadialMenu then
        lib.print.error('The radial menu does not work with the Native UI version of scully_emotemenu')
    end
end)