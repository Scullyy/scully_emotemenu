MenuBuilder = {
    process = false,
    handler = UIMenuHandler.New(),
    menus = {}
}

RequestStreamedTextureDict('menubuilder', false)

local function keyboard(title, input, max, isNumber)
    local result

    AddTextEntry('FMMC_KEY_TIP1', title)
    DisplayOnscreenKeyboard(1, 'FMMC_KEY_TIP1', '', input, '', '', '', max)

    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Wait(0)
    end

    if UpdateOnscreenKeyboard() ~= 2 then
        result = GetOnscreenKeyboardResult()

        if isNumber then result = tonumber(result) end
    end

    Wait(500)

    return result
end

function MenuBuilder.getMenuHandle(menuId)
    local menuHandle

    for id, menu in pairs(MenuBuilder.menus) do
        if id == menuId then
            menuHandle = menu.handle
            break
        end
    end

    return menuHandle
end

function MenuBuilder.open(menuId)
    if not MenuBuilder.handler:IsAnyMenuOpen() then
        for id, menu in pairs(MenuBuilder.menus) do
            if id == menuId then
                menu.handle:Visible(true)
                break
            end
        end
    end
end

function MenuBuilder.close(menuId)
    if MenuBuilder.handler:IsAnyMenuOpen() then
        for id, menu in pairs(MenuBuilder.menus) do
            if id == menuId then
                menu.handle:Visible(false)
                break
            end
        end
    end
end

function MenuBuilder.updateSubtitle(menuId, subtitle)
    for id, menu in pairs(MenuBuilder.menus) do
        if id == menuId then
            menu.handle:UpdateSubtitle(subtitle)
            break
        end
    end
end

function MenuBuilder.wipe()
    MenuBuilder.handler:CloseAllMenus()
    MenuBuilder.handler:Remove()

    MenuBuilder.menus = {}
end

function MenuBuilder.removeTemporaryMenus()
    for id, menu in pairs(MenuBuilder.menus) do
        if string.find(id, '_temp_') then
            MenuBuilder.handler:RemoveMenu(menu)

            MenuBuilder.menus[id] = nil
        end
    end
end

function MenuBuilder.IsAnyMenuOpen()
    return MenuBuilder.handler:IsAnyMenuOpen()
end

function MenuBuilder.create(data)
    local Menu = MenuBuilder.menus[data.id]

    if not Menu then
        if not data.parentMenu then
            local X

            if data.rightAlign then
                local screenWidth, _ = GetActiveScreenResolution()

                if screenWidth >= 1920 then
                    X = 1375
                else
                    X = screenWidth - 545
                end
            end

            local description = data.description and ('~HUD_COLOUR_FREEMODE~' .. data.description) or ''
            local handle = UIMenu.New(data.label, description, X)

            Menu = {
                handle = handle,
                temporary = data.temporary or false
            }

            MenuBuilder.handler:Add(handle)
        else
            local subtitle = data.label and ('~HUD_COLOUR_FREEMODE~' .. data.label) or ''
            local handle, item = MenuBuilder.handler:AddSubMenu(data.parentMenu, data.label, subtitle, data.description or '', true)

            item:RightLabel('→→→')

            Menu = {
                handle = handle
            }
        end
    end

    Menu.handle:Clear()
    Menu.options = {}

    for i = 1, #data.options do
        local option = data.options[i]

        if option.type == 'select' then
            option.handle = UIMenuItem.New(option.label, option.description or '')

            Menu.handle:AddItem(option.handle)
        elseif option.type == 'list' then
            option.handle = UIMenuListItem.New(option.label, option.list, option.index or 1, option.description or '')

            Menu.handle:AddItem(option.handle)
        elseif option.type == 'checkbox' then
            option.handle = UIMenuCheckboxItem.New(option.label, option.checked, option.description or '')

            Menu.handle:AddItem(option.handle)
        elseif option.type == 'keyboard' then
            option.handle = UIMenuItem.New(option.label, option.description or '')

            Menu.handle:AddItem(option.handle)
            option.handle:SetRightBadge(24)
        elseif option.type == 'submenu' then
            option.parentMenu = Menu.handle

            MenuBuilder.create(option)
        end

        Menu.options[i] = option
    end

    local menuOptions = Menu.options

    function Menu.handle.OnListChange(_, item, index)
        for i = 1, #menuOptions do
            local option = menuOptions[i]

            if item == option.handle then
                option.handle:IndexToItem(index)

                if option.onChange then
                    option.onChange(index)
                end

                break
            end
        end
    end

    function Menu.handle.OnItemSelect(_, item, _)
        for i = 1, #menuOptions do
            local option = menuOptions[i]

            if item == option.handle then
                if option.type == 'keyboard' then
                    local input = keyboard(option.keyboard.title, option.keyboard.input or '', option.keyboard.max or 50, option.keyboard.isNumber)

                    if input then option.onInput(input) end
                elseif option.onClick then
                    option.onClick(option.metadata)
                end

                break
            end
        end
    end

    function Menu.handle.OnListSelect(_, item, index)
        for i = 1, #menuOptions do
            local option = menuOptions[i]

            if item == option.handle then
                if option.onClick then
                    option.onClick(index, option.metadata)
                end

                break
            end
        end
    end

    function Menu.handle.OnCheckboxChange(_, item, checked)
        for i = 1, #menuOptions do
            local option = menuOptions[i]

            if item == option.handle then
                if option.onChange then
                    option.checked = checked

                    option.onChange(checked)
                end

                break
            end
        end
    end

    local activeHover

    local function startHoverAction(menu, item, index)
        for i = 1, #menuOptions do
            local option = menuOptions[i]

            if item == option.handle then
                if option.onHover then
                    activeHover = menu

                    CreateThread(function()
                        while activeHover and (menu:CurrentSelection() == index) do
                            option.onHover()

                            Wait(0)
                        end
                    end)
                end

                break
            end
        end
    end

    function Menu.handle.OnMenuOpened(menu)
        local index = menu:CurrentSelection()
        local item = menu.Items[index]

        startHoverAction(menu, item, index)
    end

    function Menu.handle.OnIndexChange(menu, index)
        local item = menu.Items[index]

        startHoverAction(menu, item, index)
    end

    function Menu.handle.OnMenuClosed(menu)
        if activeHover then activeHover = nil end

        if Menu.temporary then
            MenuBuilder.removeTemporaryMenus()
            MenuBuilder.open(Menu.temporary)
        end
    end

    Menu.handle.Settings.MouseControlsEnabled = data?.settings?.mouseControlsEnabled or false
    Menu.handle.Settings.ControlDisablingEnabled = data?.settings?.controlDisablingEnabled or false
    Menu.handle.Settings.ControlDisablingForGamePadOnly = data?.settings?.controlDisablingForGamePadOnly or false
    Menu.handle.Settings.MouseEdgeEnabled = data?.settings?.mouseEdgeEnabled or false
    Menu.handle.Settings.ResetCursorOnOpen = data?.settings?.resetCursorOnOpen or false

    MenuBuilder.handler:RefreshIndex()

    MenuBuilder.menus[data.id] = Menu
end

CreateThread(function()
    while true do
        local sleep = 100

        if MenuBuilder.process then
            sleep = 0

            MenuBuilder.handler:ProcessMenus()
        end

        Wait(sleep)
    end
end)