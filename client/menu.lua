local mainMenuOptions = {
    { label = locale('emote_options'), description = locale('open_emote_options'), icon = 'fa-solid fa-person', args = { id = 'emotemenu_submenu_emotes' } },
    { label = locale('walking_styles'), icon = 'fa-solid fa-person-walking', values = {}, args = { id = 'emotemenu_walks', walks = Walks }, close = false },
    { label = locale('scenarios'), icon = 'fa-solid fa-person-walking-with-cane', values = {}, args = { id = 'emotemenu_scenarios', scenarios = Scenarios }, close = false },
    { label = locale('facial_expressions'), icon = 'fa-solid fa-face-angry', values = {}, args = { id = 'emotemenu_expressions', expressions = Expressions }, close = false },
    { label = locale('cancel'), values = {
        { label = locale('emote'), description = locale('cancel_your_emote') },
        { label = locale('walk_style'), description = locale('reset_walk_style') },
        { label = locale('expression'), description = locale('reset_your_expression') },
        { label = locale('all'), description = locale('cancel_reset_everything') }
    }, icon = 'fa-solid fa-ban', args = { id = 'emotemenu_cancel' }, close = false }
}

local preview = require 'client.modules.preview'

---Close the emote menu
function CloseMenu()
    local currentMenu = lib.getOpenMenu()

    if not currentMenu or not string.find(currentMenu, 'emotemenu_') then return end

    lib.hideMenu()
end
exports('closeMenu', CloseMenu)

---Toggle the emote menu
function ToggleMenu()
    if PlayerState.isLimited then return end

    local currentMenu = lib.getOpenMenu()

    if not currentMenu then
        lib.showMenu('emotemenu_main_menu')
    else
        CloseMenu()
    end
end
exports('toggleMenu', ToggleMenu)

---Register the emote menu
function RegisterMenu()
    for i = 1, #mainMenuOptions do
        local option = mainMenuOptions[i]
        local data = option.args

        if data.id == 'emotemenu_walks' then
            local command = Config.walkCommands[1]

            for k = 1, #data.walks do
                local walk = data.walks[k]

                option.values[k] = { label = walk.Label, description = ('/%s %s'):format(command, walk.Command) }
            end
        elseif data.id == 'emotemenu_scenarios' then
            local command = Config.emoteCommands[1]

            for k = 1, #data.scenarios do
                local scenario = data.scenarios[k]

                option.values[k] = { label = scenario.Label, description = ('/%s %s'):format(command, scenario.Command) }
            end
        elseif data.id == 'emotemenu_expressions' then
            local command = Config.expressionCommands[1]

            for k = 1, #data.expressions do
                local expression = data.expressions[k]

                option.values[k] = { label = expression.Label, description = ('/%s %s'):format(command, expression.Command) }
            end
        end
    end

    local emoteMenuOptions = {
        { label = locale('search'), description = locale('search_for_emotes'), icon = 'fa-solid fa-magnifying-glass', args = { id = 'emotemenu_search' } }
    }

    if Config.enableEmoteBinds then
        emoteMenuOptions[2] = { label = locale('keybinds'), description = locale('create_delete_binds'), icon = 'fa-solid fa-keyboard', args = { id = 'emotemenu_submenu_binds' } }
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
                emoteOptions[index] = { label = emote.Label, description = ('/%s %s - %s'):format(command, emote.Command, locale('hold_to_preview')) }
            end
        end

        emoteMenuOptions[#emoteMenuOptions + 1] = { label = submenu.name, icon = submenu.icon, values = emoteOptions, args = { id = 'emotemenu_play_emote', emotes = emotes }, close = false }
    end

    lib.registerMenu({
        id = 'emotemenu_submenu_emotes',
        title = locale('emote_options'),
        position = Config.menuPosition,
        options = emoteMenuOptions,
        onClose = function()
            lib.showMenu('emotemenu_main_menu')
        end,
    }, function(_, scrollIndex, args)
        if args.id == 'emotemenu_search' then
            local query = lib.inputDialog(locale('search'), { locale('emote') })

            if not query then
                lib.showMenu('emotemenu_submenu_emotes')
                return
            end

            query = string.lower(query[1])

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
                        foundEmotes[index] = { label = emote.Label, description = ('/%s %s - %s'):format(command, emote.Command, locale('hold_to_preview')) }
                    end
                end

                if #foundEmotes > 0 then
                    searchMenuOptions[#searchMenuOptions + 1] = { label = submenu.name, icon = submenu.icon, values = foundEmotes, args = { id = 'emotemenu_play_emote', emotes = emotes }, close = false }
                end
            end

            if #searchMenuOptions == 0 then
                lib.showMenu('emotemenu_submenu_emotes')
                Utils.notify('error', locale('not_valid_emote'))
                return
            end

            lib.registerMenu({
                id = 'emotemenu_submenu_emotes_search',
                title = locale('search_results'),
                position = Config.menuPosition,
                options = searchMenuOptions,
                onClose = function()
                    lib.showMenu('emotemenu_submenu_emotes')
                end,
            }, function(_, scrollIndex, args)
                if Config.enableEmotePreview and IsControlPressed(0, 38) then
                    preview.showEmote(args.emotes[scrollIndex])
                    return
                end

                PlayEmote(args.emotes[scrollIndex])
            end)

            lib.showMenu('emotemenu_submenu_emotes_search')
        elseif args.id == 'emotemenu_submenu_binds' then
            local bindMenuOptions = {
                { label = locale('none'), description = locale('new_bind'), icon = 'fa-solid fa-1', args = { id = 'emotemenu_submenu_binds_new' } },
                { label = locale('none'), description = locale('new_bind'), icon = 'fa-solid fa-2', args = { id = 'emotemenu_submenu_binds_new' } },
                { label = locale('none'), description = locale('new_bind'), icon = 'fa-solid fa-3', args = { id = 'emotemenu_submenu_binds_new' } },
                { label = locale('none'), description = locale('new_bind'), icon = 'fa-solid fa-4', args = { id = 'emotemenu_submenu_binds_new' } },
                { label = locale('none'), description = locale('new_bind'), icon = 'fa-solid fa-5', args = { id = 'emotemenu_submenu_binds_new' } }
            }

            for index, emote in pairs(EmoteBinds) do
                if emote then
                    bindMenuOptions[tonumber(index)] = { label = emote.Label, description = locale('delete_bind'), icon = ('fa-solid fa-%s'):format(index), args = { id = 'emotemenu_submenu_binds_delete' } }
                end
            end

            lib.registerMenu({
                id = 'emotemenu_submenu_binds',
                title = locale('keybinds'),
                position = Config.menuPosition,
                options = bindMenuOptions,
                onClose = function()
                    lib.showMenu('emotemenu_submenu_emotes')
                end,
            }, function(selected, _, args)
                if PlayerState.isLimited then return end

                if args.id == 'emotemenu_submenu_binds_new' then
                    local query = lib.inputDialog(locale('new_bind'), { locale('emote_command_to_bind') })
                    
                    if not query then
                        lib.showMenu('emotemenu_submenu_binds')
                        return
                    end

                    query = string.lower(query[1])

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
                        lib.showMenu('emotemenu_submenu_binds')
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
                else
                    EmoteBinds[tostring(selected)] = nil

                    KVP.update('keybinds', EmoteBinds)
                    Utils.notify('success', locale('bind_deleted'))
                end
            end)

            lib.showMenu('emotemenu_submenu_binds')
        else
            if Config.enableEmotePreview and IsControlPressed(0, 38) then
                preview.showEmote(args.emotes[scrollIndex])
                return
            end

            PlayEmote(args.emotes[scrollIndex])
        end
    end)

    lib.registerMenu({
        id = 'emotemenu_main_menu',
        title = locale('emote_menu'),
        position = Config.menuPosition,
        options = mainMenuOptions,
    }, function(_, scrollIndex, args)
        if args.id == 'emotemenu_submenu_emotes' then
            lib.showMenu('emotemenu_submenu_emotes')
        elseif args.id == 'emotemenu_walks' then
            SetWalk(args.walks[scrollIndex].Walk)
        elseif args.id == 'emotemenu_scenarios' then
            PlayEmote(args.scenarios[scrollIndex])
        elseif args.id == 'emotemenu_expressions' then
            SetExpression(args.expressions[scrollIndex].Expression)
        elseif args.id == 'emotemenu_cancel' then
            if scrollIndex == 1 then
                CancelEmote()
            elseif scrollIndex == 2 then
                ResetWalk()
            elseif scrollIndex == 3 then
                ResetExpression()
            elseif scrollIndex == 4 then
                CancelEmote()
                ResetWalk()
                ResetExpression()
            end
        end
    end)
end

---Register the radial menu
function RegisterRadialMenu()
    for i = 1, #mainMenuOptions do
        local option = mainMenuOptions[i]
        local isWalks = option.args.id == 'emotemenu_walks'
        local isExpressions = option.args.id == 'emotemenu_expressions'

        if isWalks or isExpressions then
            local radialOptions = {
                {
                    label = locale('view_list'),
                    icon = 'list',
                    onSelect = function()
                        CreateList(option.label, isWalks and Walks or Expressions, isWalks and Config.walkCommands[1] or Config.expressionCommands[1])
                    end
                },
                {
                    label = locale('cancel'),
                    icon = 'ban',
                    onSelect = isWalks and ResetWalk or ResetExpression
                }
            }

            if isWalks then
                for k = 1, #Walks do
                    local walk = Walks[k]
    
                    radialOptions[#radialOptions + 1] = {
                        label = walk.Label,
                        icon = 'person-walking',
                        onSelect = function()
                            SetWalk(walk.Walk)
                        end
                    }
                end
            elseif isExpressions then
                for k = 1, #Expressions do
                    local expression = Expressions[k]
    
                    radialOptions[#radialOptions + 1] = {
                        label = expression.Label,
                        icon = 'face-angry',
                        onSelect = function()
                            SetExpression(expression.Expression)
                        end
                    }
                end
            end

            lib.registerRadial({
                id = option.args.id,
                items = radialOptions
            })
        end
    end

    lib.registerRadial({
        id = 'emotemenu_main',
        items = {
            {
                id = 'emotemenu_open',
                label = locale('open_radial_menu'),
                icon = 'person-walking',
                onSelect = ToggleMenu
            },
            {
                id = 'emotemenu_walks_submenu',
                label = locale('walking_styles'),
                icon = 'person-walking',
                menu = 'emotemenu_walks'
            },
            {
                id = 'emotemenu_expressions_submenu',
                label = locale('facial_expressions'),
                icon = 'face-angry',
                menu = 'emotemenu_expressions'
            },
            {
                id = 'emotemenu_cancel',
                label = locale('cancel'),
                icon = 'ban',
                onSelect = CancelEmote
            }
        }
    })

    lib.addRadialItem({{
        id = 'emotemenu_open',
        label = locale('emote_menu'),
        icon = 'person-walking',
        menu = 'emotemenu_main'
    }})
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
        RegisterRadialMenu()
    end
end)