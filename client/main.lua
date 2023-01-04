EmoteMenu = {
    GameBuild = GetGameBuildNumber(),
    CurrentWalk = GetResourceKvpString('animations_walkstyle') or 'default',
    CurrentExpression = GetResourceKvpString('animations_expression') or 'default',
    EmoteBinds = json.decode(GetResourceKvpString('animations_binds')) or {},
    isActionsLimited = false,
    IsPlayingAnimation = false,
    IsRagdoll = false,
    IsCrouched = false,
    IsPointing = false,
    PtfxCanHold = false,
    OtherPlayer = nil,
    PlayerProps = {},
    PlayerParticles = {},
    Keybinds = {},
    RegisteredEmotes = {}
}

-- Menu Options
local mainMenuOptions, emoteMenuOptions, emoteMenuBindsOptions = {
    -- Main Menu
    {label = 'Search', description = 'Search for animations', icon = 'fa-solid fa-magnifying-glass', args = 'animations_search'},
    {label = 'Keybinds', description = 'Create and delete emote binds', icon = 'fa-solid fa-keyboard', args = 'animations_emote_binds_menu'},
    {label = 'Emote Menu', description = 'Open the emote menu', icon = 'fa-solid fa-person', args = 'animations_emote_menu'},
    {label = 'Walking Styles', icon = 'fa-solid fa-person-walking', values = {}, args = 'Walks', close = false},
    {label = 'Scenarios', icon = 'fa-solid fa-person-walking-with-cane', values = {}, args = 'Scenarios', close = false},
    {label = 'Facial Expressions', icon = 'fa-solid fa-face-angry', values = {}, args = 'Expressions', close = false},
    {label = 'Cancel', values = {{label = 'Emote', description = 'Cancel your emote'}, {label = 'Walk Style', description = 'Reset your walk style'}, {label = 'Expression', description = 'Reset your expression'}, {label = 'All', description = 'Cancel and reset everything'}}, icon = 'fa-solid fa-ban', args = 'cancel', close = false}
}, {
    -- Emote Menu
    {label = 'Emotes', icon = 'fa-solid fa-person-walking', values = {}, args = 'Emotes', close = false},
    {label = 'Prop Emotes', icon = 'fa-solid fa-person-hiking', values = {}, args = 'PropEmotes', close = false},
    {label = 'Consumable Emotes', icon = 'fa-solid fa-pizza-slice', values = {}, args = 'ConsumableEmotes', close = false},
    {label = 'Dance Emotes', icon = 'fa-solid fa-person-running', values = {}, args = 'DanceEmotes', close = false},
    {label = 'Synchronized Emotes', icon = 'fa-solid fa-people-carry', values = {}, args = 'SynchronizedEmotes', close = false},
    {label = 'Animal Emotes', icon = 'fa-solid fa-dog', values = {}, args = 'AnimalEmotes', close = false}
}, {
    -- Emote Bind Menu
    {label = 'None', description = 'Select to create a new emote bind', icon = 'fa-solid fa-1', args = 'animations_create_bind'},
    {label = 'None', description = 'Select to create a new emote bind', icon = 'fa-solid fa-2', args = 'animations_create_bind'},
    {label = 'None', description = 'Select to create a new emote bind', icon = 'fa-solid fa-3', args = 'animations_create_bind'},
    {label = 'None', description = 'Select to create a new emote bind', icon = 'fa-solid fa-4', args = 'animations_create_bind'},
    {label = 'None', description = 'Select to create a new emote bind', icon = 'fa-solid fa-5', args = 'animations_create_bind'}
}

-- Functions
---Closes the animation menu
function EmoteMenu.CloseMenu()
    local currentMenu = lib.getOpenMenu()
    if (currentMenu == 'animations_main_menu') or (currentMenu == 'animations_emote_menu') then
        lib.hideMenu()
    end
end
exports('CloseMenu', EmoteMenu.CloseMenu)

---Toggles the animation menu
function EmoteMenu.ToggleMenu()
    local currentMenu = lib.getOpenMenu()
    if not currentMenu then
        lib.showMenu('animations_main_menu')
    else
        EmoteMenu.CloseMenu()
    end
end
exports('ToggleMenu', EmoteMenu.ToggleMenu)

---Toggle player limitations
---@param limited boolean
function EmoteMenu.ToggleLimitation(limited)
    EmoteMenu.isActionsLimited = limited
end
exports('ToggleLimitation', EmoteMenu.ToggleLimitation)

---Check if the player is currently limited
---@return boolean
function EmoteMenu.IsLimited()
    return EmoteMenu.isActionsLimited
end
exports('IsLimited', EmoteMenu.IsLimited)

---Remove multiple entries from a table
---@param _table table
---@param keep function
function EmoteMenu.RemoveFromTable(_table, keep)
    local _index = 1
    for i = 1, #_table do
        if keep(_table, i) then
            if (i ~= _index) then
                _table[_index] = _table[i]
                _table[i] = nil
            end
            _index += 1
        else
            _table[i] = nil
        end
    end
    return _table
end

---Display a notification
---@param _type string
---@param message string
function EmoteMenu.Notify(_type, message)
    lib.notify({
        description = message,
        position = Config.NotificationPosition,
        duration = 2500,
        style = {
            backgroundColor = '#141517',
            color = '#d6d6d6'
        },
        icon = _type == 'error' and 'ban' or 'circle-exclamation',
        iconColor = _type == 'error' and '#D30000' or '#2ea4f7'
    })
end

---Displays a text UI
---@param icon string
---@param text string
function EmoteMenu.ShowHelpAlert(icon, text)
    lib.showTextUI(text, {
        position = Config.HelpAlertPosition,
        icon = icon,
        style = {
            borderRadius = 0,
            backgroundColor = '#141517',
            color = 'white'
        }
    })
end

---Register emotes to be used within external resources
---@param emote table
function EmoteMenu.RegisterEmote(emote)
    EmoteMenu.RegisteredEmotes[emote.Name] = emote
end
exports('RegisterEmote', EmoteMenu.RegisterEmote)

---Play a registered emote
---@param emote string
function EmoteMenu.PlayRegisteredEmote(emote)
    local registeredEmote = EmoteMenu.RegisteredEmotes[emote]
    if not registeredEmote then
        EmoteMenu.Notify('error', 'That isn\'t a valid registered emote, please inform the server owner')
        return
    end
    if registeredEmote.Type == 'Walks' then
        EmoteMenu.SetWalk(registeredEmote.Walk)
    else
        EmoteMenu.Play(registeredEmote, registeredEmote.Variant)
    end
end
exports('PlayRegisteredEmote', EmoteMenu.PlayRegisteredEmote)

---Remove emotes from the menu
---@param _type string
function EmoteMenu.RemoveEmotes(_type)
    local checkMenus = {
        'Walks',
        'Scenarios',
        'Expressions',
        'Emotes',
        'PropEmotes',
        'ConsumableEmotes',
        'DanceEmotes',
        'SynchronizedEmotes',
        'AnimalEmotes'
    }
    for i = 1, #checkMenus do
        AnimationList[checkMenus[i]] = EmoteMenu.RemoveFromTable(AnimationList[checkMenus[i]], function(_table, _index)
            return not _table[_index][_type]
        end)
    end
end

---Add emotes to the menu
---@param _type string
---@param command string
function EmoteMenu.AddEmotesToMenu(_type, command)
    for option = 1, #mainMenuOptions do
        if mainMenuOptions[option].args == _type then
            for emote = 1, #AnimationList[_type] do
                local _emote = AnimationList[_type][emote]
                if _emote and _emote.Label and not _emote.Hide then
                    mainMenuOptions[option].values[#mainMenuOptions[option].values + 1] = {label = _emote.Label, description = ('%s %s'):format(command, _emote.Command)}
                end
            end
            break
        end
    end
    for option = 1, #emoteMenuOptions do
        if emoteMenuOptions[option].args == _type then
            for emote = 1, #AnimationList[_type] do
                local _emote = AnimationList[_type][emote]
                if _emote and _emote.Label and not _emote.Hide then
                    emoteMenuOptions[option].values[#emoteMenuOptions[option].values + 1] = {label = _emote.Label, description = ('%s %s'):format(command, _emote.Command)}
                end
            end
            break
        end
    end
end

---Remove attached props on the player
function EmoteMenu.RemoveProps()
    for i = 1, #EmoteMenu.PlayerProps do
        DeleteEntity(EmoteMenu.PlayerProps[i])
    end
    EmoteMenu.PlayerProps = {}
end

---Get an emote based on the command
---@param name string
---@return string _type Emote type
---@return table _emote Emote table
function EmoteMenu.GetEmoteByCommand(name)
    local _type, _emote, checkMenus = nil, nil, {
        'Walks',
        'Scenarios',
        'Expressions',
        'Emotes',
        'PropEmotes',
        'ConsumableEmotes',
        'DanceEmotes',
        'SynchronizedEmotes',
        'AnimalEmotes'
    }
    for i = 1, #checkMenus do
        local animType = checkMenus[i]
        local animList = AnimationList[animType]
        for emote = 1, #animList do
            if animList[emote] and (animList[emote].Command == name) then
                _type, _emote = animType, animList[emote]
                break
            end
        end
    end
    return _type, _emote
end

---Check if the player is in an animation
---@return boolean
function EmoteMenu.IsInAnimation()
    return EmoteMenu.IsPlayingAnimation
end
exports('IsInAnimation', EmoteMenu.IsInAnimation)

function EmoteMenu.RequestSynchronizedEmote(senderData)
    local playerPos = GetEntityCoords(cache.ped)
    local targetId, targetPed, targetPos = lib.getClosestPlayer(playerPos, 3.0, false)
    if not targetId then
        EmoteMenu.Notify('error', 'No player nearby!')
        return
    end
    local _type, emote = EmoteMenu.GetEmoteByCommand(senderData.Options.Shared.OtherAnimation)
    if _type ~= 'SynchronizedEmotes' then
        EmoteMenu.Notify('error', 'That isn\'t a valid synchronized emote, please inform the server owner')
        return
    end
    TriggerServerEvent('scully_emotemenu:requestSynchronizedEmote', GetPlayerServerId(targetId), senderData, emote)
end

---Play an emote by command
---@param command string
---@param variant number
function EmoteMenu.PlayByCommand(command, variant)
    local _type, emote = EmoteMenu.GetEmoteByCommand(command)
    if not _type or (_type == 'Walks') then
        EmoteMenu.Notify('error', 'That isn\'t a valid emote')
        return
    end
    if _type == 'SynchronizedEmotes' then
        EmoteMenu.RequestSynchronizedEmote(emote)
        return
    end
    EmoteMenu.Play(emote, variant)
end
exports('PlayByCommand', EmoteMenu.PlayByCommand)

---Play an animation
---@param data table
---@param variation number
function EmoteMenu.Play(data, variation)
    if data.Expression then
        EmoteMenu.SetExpression(data.Expression)
        return
    end

    if Config.EnableWeaponBlock and IsPedArmed(cache.ped, 7) then
        EmoteMenu.Notify('error', 'You can\'t play animations with a weapon!')
        return 
    end

    local isInVehicle = IsPedInAnyVehicle(cache.ped, true)
    local duration, movementFlag = nil, isInVehicle and 51 or 0

    if not Config.AllowedInVehicles and isInVehicle then
        EmoteMenu.Notify('error', 'You can\'t play animations in vehicles!')
        return
    end

    if #EmoteMenu.PlayerProps > 0 then
        EmoteMenu.RemoveProps()
    end

    if data.Scenario then
        if isInVehicle then
            EmoteMenu.Notify('error', 'You can\'t play scenarios in vehicles!')
            return
        end

        ClearPedTasks(cache.ped)
        TaskStartScenarioInPlace(cache.ped, data.Scenario, 0, true)
        EmoteMenu.IsPlayingAnimation = true
        return
    end

    local hasAutomatedPtfx, dictionaryName, animationName = false, data.Dictionary, data.Animation

    if (type(dictionaryName) == 'table') and (type(animationName) == 'table') then
        local randomIndex = math.random(1, #animationName)
        dictionaryName = dictionaryName[randomIndex]
        animationName = animationName[randomIndex]
    end

    local isValid = lib.requestAnimDict(dictionaryName, 1000)
    if not isValid then
        EmoteMenu.Notify('error', 'That isn\'t a valid emote')
        return
    end

    if data.Options then
        duration = data.Options.Duration

        if data.Options.Delay then Wait(data.Options.Delay) end

        if not isInVehicle and data.Options.Flags then
            if data.Options.Flags.Loop then movementFlag = 1 end
            if data.Options.Flags.Move then movementFlag = 51 end
            if data.Options.Flags.Stuck then movementFlag = 50 end
        end

        if data.Options.Ptfx then
            hasAutomatedPtfx = Config.EnableAutoPtfx and data.Options.Ptfx.Auto
            EmoteMenu.PtfxCanHold = data.Options.Ptfx.CanHold

            if Config.PtfxKeybind and not hasAutomatedPtfx then
                EmoteMenu.Keybinds.PlayPtfx:disable(false)
                EmoteMenu.Notify('success', ('Press %s to use the effect!'):format(GetControlInstructionalButton(0, joaat('+playptfx') | 0x80000000, 1):sub(3)))
            else
                EmoteMenu.Keybinds.PlayPtfx:disable(true)
            end

            TriggerServerEvent('scully_emotemenu:syncPtfx', data.Options.Ptfx.Asset, data.Options.Ptfx.Name, data.Options.Ptfx.Placement, data.Options.Ptfx.Color)
        else
            if Config.PtfxKeybind then EmoteMenu.Keybinds.PlayPtfx:disable(true) end
        end
    end

    TaskPlayAnim(cache.ped, dictionaryName, animationName, 2.0, 2.0, duration or -1, movementFlag, 0, false, false, false)
    RemoveAnimDict(dictionaryName)
    EmoteMenu.IsPlayingAnimation = true

    if data.Options and data.Options.Props then
        local propCount = #data.Options.Props
        if propCount > 0 then
            Wait(duration or 0)
            for i = 1, propCount do
                local prop = data.Options.Props[i]
                local variant = prop.Variant
                if variation then
                    if prop.Variations and prop.Variations[variation] then
                        variant = prop.Variations[variation]
                    end
                end
                local object = EmoteMenu.AddPropToPlayer(prop.Name, prop.Bone, prop.Placement, variant)
                if (i == 1) and (data.Options.Ptfx and data.Options.Ptfx.AttachToProp) then
                    TriggerServerEvent('scully_emotemenu:syncProp', ObjToNet(object))
                end
            end
        end
    end
    if hasAutomatedPtfx then
        Wait(400)
        LocalPlayer.state:set('ptfx', true, true)
    end
end
exports('Play', EmoteMenu.Play)

---Cancel the animation you're currently playing
function EmoteMenu.CancelAnimation(options)
    if EmoteMenu.IsPlayingAnimation then
        if IsPedUsingAnyScenario(cache.ped) then
            if options.clearImmediately ~= false then ClearPedTasksImmediately(cache.ped) end
        end
        if LocalPlayer.state.ptfx then LocalPlayer.state:set('ptfx', false, true) end
        if Config.PtfxKeybind then EmoteMenu.Keybinds.PlayPtfx:disable(true) end
        ClearPedTasks(cache.ped)
        DetachEntity(cache.ped, true, false)
        EmoteMenu.RemoveProps()
        EmoteMenu.IsPlayingAnimation = false
        if EmoteMenu.OtherPlayer then
            TriggerServerEvent('scully_emotemenu:cancelSynchronizedEmote', EmoteMenu.OtherPlayer)
            EmoteMenu.OtherPlayer = nil
        end
    end
end
exports('CancelAnimation', EmoteMenu.CancelAnimation)

---Get the players current expression
---@return string
function EmoteMenu.GetCurrentExpression()
    return EmoteMenu.CurrentExpression
end
exports('GetCurrentExpression', EmoteMenu.GetCurrentExpression)

---Set the players current expression
---@param name string
function EmoteMenu.SetExpression(name)
    SetFacialIdleAnimOverride(cache.ped, name, 0)
    SetResourceKvp('animations_expression', name)
    EmoteMenu.CurrentExpression = name
end
exports('SetExpression', EmoteMenu.SetExpression)

---Reset the players expression
function EmoteMenu.ResetExpression()
    ClearFacialIdleAnimOverride(cache.ped)
    SetResourceKvp('animations_expression', 'default')
    EmoteMenu.CurrentExpression = 'default'
end
exports('ResetExpression', EmoteMenu.ResetExpression)

---Get the players current walk style
---@return string
function EmoteMenu.GetCurrentWalk()
    return EmoteMenu.CurrentWalk
end
exports('GetCurrentWalk', EmoteMenu.GetCurrentWalk)

---Set the players current walk style
---@param name string
function EmoteMenu.SetWalk(name)
    lib.requestAnimSet(name, 1000)
    SetPedMovementClipset(cache.ped, name, 0.2)
    RemoveAnimSet(name)
    SetResourceKvp('animations_walkstyle', name)
    EmoteMenu.CurrentWalk = name
end
exports('SetWalk', EmoteMenu.SetWalk)

---Reset the players walk style
function EmoteMenu.ResetWalk()
    ResetPedMovementClipset(cache.ped)
    SetResourceKvp('animations_walkstyle', 'default')
    EmoteMenu.CurrentWalk = 'default'
end
exports('ResetWalk', EmoteMenu.ResetWalk)

---Attach a prop to the player
---@param prop string
---@param bone number
---@param placement table
---@param variant number
---@return number object Entity handle
function EmoteMenu.AddPropToPlayer(prop, bone, placement, variant)
    local playerPos = GetEntityCoords(cache.ped)
    lib.requestModel(prop, 1000)
    local object = CreateObject(joaat(prop), playerPos.x, playerPos.y, playerPos.z + 0.2, true, true, true)
    SetEntityCollision(object, false, false)
    if variant then SetObjectTextureVariation(object, variant) end
    AttachEntityToEntity(object, cache.ped, GetPedBoneIndex(cache.ped, bone), placement[1].x, placement[1].y, placement[1].z, placement[2].x, placement[2].y, placement[2].z, true, true, false, true, 1, true)
    EmoteMenu.PlayerProps[#EmoteMenu.PlayerProps + 1] = object
    SetModelAsNoLongerNeeded(prop)
    return object
end

---Remove unsupported emotes
function EmoteMenu.RemoveUnsupportedEmotes()
    local checkMenus = {
        'Walks',
        'Scenarios',
        'Expressions',
        'Emotes',
        'PropEmotes',
        'ConsumableEmotes',
        'DanceEmotes',
        'SynchronizedEmotes',
        'AnimalEmotes'
    }
    local DoesAnimDictExist = DoesAnimDictExist
    local IsModelValid = IsModelValid
    for i = 1, #checkMenus do
        if AnimationList[checkMenus[i]] then
            AnimationList[checkMenus[i]] = EmoteMenu.RemoveFromTable(AnimationList[checkMenus[i]], function(_table, _index)
                local animation, doesExist = _table[_index], true
                if EmoteMenu.GameBuild < 2699 then
                    if animation.Dictionary and not DoesAnimDictExist(animation.Dictionary) then doesExist = false end
                    if animation.Options and animation.Options.Props then
                        local props = animation.Options.Props
                        local propCount = #props
                        if propCount > 0 then
                            for k = 1, propCount do
                                if not IsModelValid(joaat(props[k].Name)) then
                                    doesExist = false
                                    break
                                end
                            end
                        end
                    end
                    if not doesExist then
                        print('^1removed ' .. animation.Label .. ' as it is not supported on your current game build.')
                    end
                end
                return doesExist
            end)
        end
    end
end

---Search for animations
---@param query string
function EmoteMenu.Search(query)
    Wait(500)
    local checkMenus, foundEmotes = {
        'Walks',
        'Scenarios',
        'Expressions',
        'Emotes',
        'PropEmotes',
        'ConsumableEmotes',
        'DanceEmotes',
        'SynchronizedEmotes',
        'AnimalEmotes'
    }, {}
    for i = 1, #checkMenus do
        local animType = checkMenus[i]
        local animList = AnimationList[animType]
        if animList then
            for emote = 1, #animList do
                local anim = animList[emote]
                if anim and (anim.Command and string.find(string.lower(anim.Command), query)) then
                    anim.CommandHandle = animType == 'Walks' and Config.WalkSetCommands[1] or Config.EmotePlayCommands[1]
                    anim.Type = animType
                    foundEmotes[#foundEmotes + 1] = anim
                end
            end
        end
    end
    if #foundEmotes < 1 then
        EmoteMenu.Notify('error', 'No animations found')
        lib.showMenu('animations_main_menu')
        return
    end
    local options = {}
    for emote = 1, #foundEmotes do
        local _emote = foundEmotes[emote]
        if _emote then
            options[#options + 1] = {label = _emote.Label, description = ('%s %s / (%s)'):format(_emote.CommandHandle, _emote.Command, _emote.Type), icon = 'fa-solid fa-person', args = _emote.Command, close = false}
        end
    end
    lib.registerMenu({
        id = 'animations_search_menu',
        title = 'Animation Menu',
        position = Config.MenuPosition,
        options = options,
        onClose = function(_)
            lib.showMenu('animations_main_menu')
        end,
    }, function(selected, scrollIndex, option)
        if EmoteMenu.isActionsLimited then return end
        local _type, emote = EmoteMenu.GetEmoteByCommand(option)
        if not _type then
            EmoteMenu.Notify('error', 'That isn\'t a valid emote or walk style')
            return
        end
        if _type == 'Walks' then
            EmoteMenu.SetWalk(emote.Walk)
            return
        end
        if _type == 'SynchronizedEmotes' then
            EmoteMenu.RequestSynchronizedEmote(emote)
            return
        end
        EmoteMenu.Play(emote)
    end)
    lib.showMenu('animations_search_menu')
end

---Create an emote bind
---@param index number
---@param emote table
function EmoteMenu.CreateBind(index, emote)
    Wait(500)
    emoteMenuBindsOptions[index] = {label = emote.Label, description = 'Click to delete the bind', icon = ('fa-solid fa-%s'):format(index), args = index}
    EmoteMenu.EmoteBinds[index] = {Index = index, Label = emote.Label, Emote = emote.Command}
    SetResourceKvp('animations_binds', json.encode(EmoteMenu.EmoteBinds))
    EmoteMenu.Notify('success', ('%s has been binded!'):format(emote.Label))
    EmoteMenu.OpenBindMenu()
end

---Delete an emote bind
---@param index number
function EmoteMenu.DeleteBind(index)
    Wait(500)
    emoteMenuBindsOptions[index] = {label = 'None', description = 'Select to create a new emote bind', icon = 'fa-solid fa-1', args = 'animations_create_bind'}
    EmoteMenu.EmoteBinds = EmoteMenu.RemoveFromTable(EmoteMenu.EmoteBinds, function(_table, _index)
        return _table[_index].Index ~= index
    end)
    SetResourceKvp('animations_binds', json.encode(EmoteMenu.EmoteBinds))
    EmoteMenu.Notify('error', 'The bind has been deleted!')
    EmoteMenu.OpenBindMenu()
end

---Open the emote bind menu
function EmoteMenu.OpenBindMenu()
    lib.registerMenu({
        id = 'animations_emote_binds_menu',
        title = 'Animation Menu',
        position = Config.MenuPosition,
        options = emoteMenuBindsOptions,
        onClose = function(_)
            lib.showMenu('animations_main_menu')
        end,
    }, function(selected, scrollIndex, option)
        if EmoteMenu.isActionsLimited then return end
        if option == 'animations_create_bind' then
            local query = lib.inputDialog('Create Emote Bind', {'Emote Command Name'})
            if not query then return end
            local _type, emote = EmoteMenu.GetEmoteByCommand(query[1])
            if not _type or (_type == 'Walks') then
                EmoteMenu.Notify('error', 'That isn\'t a valid emote')
                return
            end
            if emote.BlockBinding then
                EmoteMenu.Notify('error', 'You\'re not allowed to bind this emote')
                return
            end
            EmoteMenu.CreateBind(selected, emote)
            return
        end
        EmoteMenu.DeleteBind(option)
    end)
    lib.showMenu('animations_emote_binds_menu')
end

-- Add / Remove options
EmoteMenu.RemoveUnsupportedEmotes()

if not Config.EnableNSFWEmotes then
    EmoteMenu.RemoveEmotes('NSFW')
end

if not Config.EnableGangEmotes then
    EmoteMenu.RemoveEmotes('Gang')
end

if not Config.EnableSocialMovementEmotes then
    EmoteMenu.RemoveEmotes('SocialMovement')
end

EmoteMenu.AddEmotesToMenu('Emotes', Config.EmotePlayCommands[1])

EmoteMenu.AddEmotesToMenu('PropEmotes', Config.EmotePlayCommands[1])

EmoteMenu.AddEmotesToMenu('DanceEmotes', Config.EmotePlayCommands[1])

EmoteMenu.AddEmotesToMenu('Walks', Config.WalkSetCommands[1])

EmoteMenu.AddEmotesToMenu('Scenarios', Config.EmotePlayCommands[1])

EmoteMenu.AddEmotesToMenu('Expressions', Config.EmotePlayCommands[1])

if not Config.EnableSearch then
    mainMenuOptions = EmoteMenu.RemoveFromTable(mainMenuOptions, function(_table, _index)
        return _table[_index].args ~= 'animations_search'
    end)
end

if Config.EnableEmoteBinds then
    local binds = EmoteMenu.EmoteBinds
    for i = 1, 5 do
        local command = ('emotebind-%s'):format(i)

        RegisterCommand(command, function()
            local bind = EmoteMenu.EmoteBinds[i]
            if bind then
                EmoteMenu.PlayByCommand(bind.Emote)
            end
        end, false)

        RegisterKeyMapping(command, command, 'keyboard', '')
    end
    for i = 1, #binds do
        local bind = binds[i]
        if bind then
            emoteMenuBindsOptions[i] = {label = bind.Label, description = 'Click to delete the bind', icon = ('fa-solid fa-%s'):format(i), args = bind.Index}
        end
    end
else
    mainMenuOptions = EmoteMenu.RemoveFromTable(mainMenuOptions, function(_table, _index)
        return _table[_index].args ~= 'animations_emote_binds_menu'
    end)
end

if Config.EnableConsumableEmotes then
    EmoteMenu.AddEmotesToMenu('ConsumableEmotes', Config.EmotePlayCommands[1])
else
    emoteMenuOptions = EmoteMenu.RemoveFromTable(emoteMenuOptions, function(_table, _index)
        return _table[_index].args ~= 'ConsumableEmotes'
    end)
end

if Config.EnableSynchronizedEmotes then
    EmoteMenu.AddEmotesToMenu('SynchronizedEmotes', Config.EmotePlayCommands[1])
else
    emoteMenuOptions = EmoteMenu.RemoveFromTable(emoteMenuOptions, function(_table, _index)
        return _table[_index].args ~= 'SynchronizedEmotes'
    end)
end

if Config.EnableAnimalEmotes then
    EmoteMenu.AddEmotesToMenu('AnimalEmotes', Config.EmotePlayCommands[1])
else
    emoteMenuOptions = EmoteMenu.RemoveFromTable(emoteMenuOptions, function(_table, _index)
        return _table[_index].args ~= 'AnimalEmotes'
    end)
end

-- Register Menus
--- Main Menu
lib.registerMenu({
    id = 'animations_main_menu',
    title = 'Animation Menu',
    position = Config.MenuPosition,
    options = mainMenuOptions,
}, function(selected, scrollIndex, option)
    if EmoteMenu.isActionsLimited then return end
    if option == 'animations_search' then
        local query = lib.inputDialog('Animation Search', {'Animation'})
        if not query then return end
        EmoteMenu.Search(string.lower(query[1]))
        return
    elseif option == 'animations_emote_binds_menu' then
        EmoteMenu.OpenBindMenu()
        return
    elseif option == 'animations_emote_menu' then
        lib.showMenu('animations_emote_menu')
        return
    elseif option == 'cancel' then
        if scrollIndex == 1 then
            EmoteMenu.CancelAnimation()
        elseif scrollIndex == 2 then
            EmoteMenu.ResetWalk()
        elseif scrollIndex == 3 then
            EmoteMenu.ResetExpression()
        elseif scrollIndex == 4 then
            EmoteMenu.CancelAnimation()
            EmoteMenu.ResetWalk()
            EmoteMenu.ResetExpression()
        end
        return
    end
    local emote = AnimationList[option][scrollIndex]
    if not emote then
        EmoteMenu.Notify('error', 'That isn\'t a valid option, please inform the server owner')
        return
    end
    if option == 'Walks' then
        EmoteMenu.SetWalk(emote.Walk)
        return
    end
    EmoteMenu.Play(emote)
end)

--- Emote Menu
lib.registerMenu({
    id = 'animations_emote_menu',
    title = 'Animation Menu',
    position = Config.MenuPosition,
    options = emoteMenuOptions,
    onClose = function(_)
        lib.showMenu('animations_main_menu')
    end,
}, function(selected, scrollIndex, option)
    if EmoteMenu.isActionsLimited then return end
    local emote = AnimationList[option][scrollIndex]
    if not emote then
        EmoteMenu.Notify('error', 'That isn\'t a valid emote')
        return
    end
    if option == 'SynchronizedEmotes' then
        EmoteMenu.RequestSynchronizedEmote(emote)
        return
    end
    EmoteMenu.Play(emote)
end)

-- Commands
for i = 1, #Config.MenuOpenCommands do
    RegisterCommand(Config.MenuOpenCommands[i], function(source, args, rawCommand)
        if EmoteMenu.isActionsLimited then return end
        EmoteMenu.ToggleMenu()
    end, false)
end

for i = 1, #Config.EmotePlayCommands do
    RegisterCommand(Config.EmotePlayCommands[i], function(source, args, rawCommand)
        if EmoteMenu.isActionsLimited then return end
        if not args[1] then
            EmoteMenu.Notify('error', 'You need to provide a valid emote!')
            return
        end
        if args[1]:lower() == 'c' then
            EmoteMenu.CancelAnimation()
            return
        end
        local _type, emote = EmoteMenu.GetEmoteByCommand(args[1])
        if not _type or (_type == 'Walks') then
            EmoteMenu.Notify('error', 'That isn\'t a valid emote')
            return
        end
        if _type == 'SynchronizedEmotes' then
            EmoteMenu.RequestSynchronizedEmote(emote)
            return
        end
        local variant = nil
        if args[2] then
            local index = tonumber(args[2])
            if index then variant = index end
        end
        EmoteMenu.Play(emote, variant)
    end, false)
end

for i = 1, #Config.WalkSetCommands do
    RegisterCommand(Config.WalkSetCommands[i], function(source, args, rawCommand)
        if EmoteMenu.isActionsLimited then return end
        if not args[1] then
            EmoteMenu.Notify('error', 'You need to provide a valid emote!')
            return
        end
        if args[1]:lower() == 'c' then
            EmoteMenu.ResetWalk()
            return
        end
        local _type, emote = EmoteMenu.GetEmoteByCommand(args[1])
        if not _type or (_type ~= 'Walks') then
            EmoteMenu.Notify('error', 'That isn\'t a valid walk style')
            return
        end
        EmoteMenu.SetWalk(emote.Walk)
    end, false)
end

-- Keybinds
if Config.MenuKeybind ~= '' then
    if #Config.MenuOpenCommands > 0 then
        RegisterKeyMapping(Config.MenuOpenCommands[1], 'Open the animation menu', 'keyboard', Config.MenuKeybind)
    end
end

if Config.CancelEmoteKey ~= '' then
    EmoteMenu.Keybinds.CancelKey = lib.addKeybind({
        name = 'ecancel',
        description = 'Cancel animation',
        defaultKey = Config.CancelEmoteKey,
        onPressed = function(key)
            EmoteMenu.CancelAnimation()
        end
    })
end

if Config.RagdollKeybind ~= '' then
    local IsPedOnFoot = IsPedOnFoot
    local SetPedToRagdoll = SetPedToRagdoll

    EmoteMenu.Keybinds.Ragdoll = lib.addKeybind({
        name = 'ragdoll',
        description = 'Ragdoll your character',
        defaultKey = Config.RagdollKeybind,
        onPressed = function(key)
            if EmoteMenu.isActionsLimited then return end
            EmoteMenu.IsRagdoll = not EmoteMenu.IsRagdoll
            while EmoteMenu.IsRagdoll do
                Wait(0)
                if IsPedOnFoot(cache.ped) then
                    SetPedToRagdoll(cache.ped, 1000, 1000, 0, 0, 0, 0)
                end
            end
        end
    })
end

if Config.HandsUpKey ~= '' then
    if Config.HandsUpKeyToggles then
        local handsup = false
        EmoteMenu.Keybinds.HandsUp = lib.addKeybind({
            name = 'handsup',
            description = 'Put your hands up',
            defaultKey = Config.HandsUpKey,
            onPressed = function(key)
                if EmoteMenu.isActionsLimited then return end
                if not handsup then
                    lib.requestAnimDict('random@mugging3', 1000)
                    TaskPlayAnim(cache.ped, 'random@mugging3', 'handsup_standing_base', 8.0, 8.0, -1, 50, 0, false, false, false)
                    handsup = true
                else
                    ClearPedTasks(cache.ped)
                    handsup = false
                end
            end
        })
    else
        EmoteMenu.Keybinds.HandsUp = lib.addKeybind({
            name = 'handsup',
            description = 'Put your hands up',
            defaultKey = Config.HandsUpKey,
            onPressed = function(key)
                if EmoteMenu.isActionsLimited then return end
                lib.requestAnimDict('random@mugging3', 1000)
                TaskPlayAnim(cache.ped, 'random@mugging3', 'handsup_standing_base', 8.0, 8.0, -1, 50, 0, false, false, false)
            end,
            onReleased = function(key)
                ClearPedTasks(cache.ped)
            end
        })
    end
end

if Config.CrouchKey ~= '' then
    EmoteMenu.Keybinds.Crouch = lib.addKeybind({
        name = 'crouch',
        description = 'Crouch',
        defaultKey = Config.CrouchKey,
        onPressed = function(key)
            if EmoteMenu.isActionsLimited or cache.vehicle then return end
            EmoteMenu.IsCrouched = not EmoteMenu.IsCrouched
            if EmoteMenu.IsCrouched then
                lib.requestAnimSet('move_ped_crouched', 1000)
                SetPedMovementClipset(cache.ped, 'move_ped_crouched', 1.0)
                SetPedWeaponMovementClipset(cache.ped, 'move_ped_crouched', 1.0)
                SetPedStrafeClipset(cache.ped, 'move_ped_crouched_strafing', 1.0)
            else
                if EmoteMenu.CurrentWalk == 'default' then
                    ResetPedMovementClipset(cache.ped, 1.0)
                else
                    lib.requestAnimSet(EmoteMenu.CurrentWalk, 1000)
                    SetPedMovementClipset(cache.ped, EmoteMenu.CurrentWalk, 1.0)
                end
                ResetPedWeaponMovementClipset(cache.ped)
                ResetPedStrafeClipset(cache.ped)
            end
        end
    })
end

if Config.PointKey ~= '' then
    local GetGameplayCamRelativePitch = GetGameplayCamRelativePitch
    local GetGameplayCamRelativeHeading = GetGameplayCamRelativeHeading
    local Cos = Cos
    local Sin = Sin
    local GetOffsetFromEntityInWorldCoords = GetOffsetFromEntityInWorldCoords
    local StartShapeTestCapsule = StartShapeTestCapsule
    local GetShapeTestResult = GetShapeTestResult
    local SetTaskMoveNetworkSignalFloat = SetTaskMoveNetworkSignalFloat
    local SetTaskMoveNetworkSignalBool = SetTaskMoveNetworkSignalBool
    local GetCamViewModeForContext = GetCamViewModeForContext
    local GetCamActiveViewModeContext = GetCamActiveViewModeContext

    EmoteMenu.Keybinds.Point = lib.addKeybind({
        name = 'point',
        description = 'Point',
        defaultKey = Config.PointKey,
        onPressed = function(key)
            if EmoteMenu.isActionsLimited then return end
            EmoteMenu.IsPointing = not EmoteMenu.IsPointing
            if EmoteMenu.IsPointing then
                if cache.vehicle then return end
                lib.requestAnimDict('anim@mp_point', 1000)
                SetPedCurrentWeaponVisible(cache.ped, 0, true, true, true)
                SetPedConfigFlag(cache.ped, 36, 1)
                TaskMoveNetworkByName(cache.ped, 'task_mp_pointing', 0.5, false, 'anim@mp_point', 24)
                RemoveAnimDict('anim@mp_point')
                CreateThread(function()
                    while EmoteMenu.IsPointing do
                        Wait(0)
                        local camPitch = GetGameplayCamRelativePitch()
                        if camPitch < -70.0 then
                            camPitch = -70.0
                        elseif camPitch > 42.0 then
                            camPitch = 42.0
                        end
                        camPitch = (camPitch + 70.0) / 112.0

                        local camHeading = GetGameplayCamRelativeHeading()
                        local cosCamHeading = Cos(camHeading)
                        local sinCamHeading = Sin(camHeading)
                        if camHeading < -180.0 then
                            camHeading = -180.0
                        elseif camHeading > 180.0 then
                            camHeading = 180.0
                        end
                        camHeading = (camHeading + 180.0) / 360.0

                        local coords = GetOffsetFromEntityInWorldCoords(cache.ped, (cosCamHeading * -0.2) - (sinCamHeading * (0.4 * camHeading + 0.3)), (sinCamHeading * -0.2) + (cosCamHeading * (0.4 * camHeading + 0.3)), 0.6)
                        local ray = StartShapeTestCapsule(coords.x, coords.y, coords.z - 0.2, coords.x, coords.y, coords.z + 0.2, 0.4, 95, cache.ped, 7)
                        local _, blocked = GetShapeTestResult(ray)
                        SetTaskMoveNetworkSignalFloat(cache.ped, 'Pitch', camPitch)
                        SetTaskMoveNetworkSignalFloat(cache.ped, 'Heading', camHeading * -1.0 + 1.0)
                        SetTaskMoveNetworkSignalBool(cache.ped, 'isBlocked', blocked)
                        SetTaskMoveNetworkSignalBool(cache.ped, 'isFirstPerson', GetCamViewModeForContext(GetCamActiveViewModeContext()) == 4)
                    end
                end)
            else
                RequestTaskMoveNetworkStateTransition(cache.ped, 'Stop')
                if not IsPedInjured(cache.ped) then ClearPedSecondaryTask(cache.ped) end
                if not cache.vehicle then SetPedCurrentWeaponVisible(cache.ped, 1, true, true, true) end
                SetPedConfigFlag(cache.ped, 36, false)
                ClearPedSecondaryTask(cache.ped)
            end
        end
    })
end

if Config.PtfxKeybind then
    EmoteMenu.Keybinds.PlayPtfx = lib.addKeybind({
        name = 'playptfx',
        disabled = true,
        description = 'Play your selected particle effect',
        defaultKey = Config.PtfxKeybind,
        onPressed = function(key)
            LocalPlayer.state:set('ptfx', true, true)
            if not EmoteMenu.PtfxCanHold then
                LocalPlayer.state:set('ptfx', false, true)
            end
        end,
        onReleased = function(key)
            if EmoteMenu.PtfxCanHold then
                LocalPlayer.state:set('ptfx', false, true)
            end
        end
    })
end

-- State Bag Handlers
AddStateBagChangeHandler('ptfx', nil, function(bagName, key, value, _unused, replicated)
    local serverId = tonumber(bagName:gsub('player:', ''), 10)

    if (EmoteMenu.PlayerParticles[serverId] and value) or (not EmoteMenu.PlayerParticles[serverId] and not value) then return end

    local playerId = GetPlayerFromServerId(serverId)

    if not playerId then return end

    local playerPed = GetPlayerPed(playerId)
    local stateBag = Player(serverId).state

    if value then
        local asset, name, offset, rot, scale, color, propNet, entityTarget = stateBag.ptfxAsset, stateBag.ptfxName, stateBag.ptfxOffset, stateBag.ptfxRot, stateBag.ptfxScale or 1, stateBag.ptfxColor, stateBag.ptfxPropNet, playerPed

        if propNet then
            local propObj = NetToObj(propNet)
            if DoesEntityExist(propObj) then entityTarget = propObj end
        end

        lib.requestNamedPtfxAsset(asset, 1000)
        UseParticleFxAsset(asset)
        EmoteMenu.PlayerParticles[serverId] = StartParticleFxLoopedOnEntityBone(name, entityTarget, offset.x, offset.y, offset.z, rot.x, rot.y, rot.z, GetEntityBoneIndexByName(name, 'VFX'), scale + 0.0, false, false, false)

        if color then
            if color[1] and type(color[1]) == 'table' then
                local randomIndex = math.random(1, #color)
                color = color[randomIndex]
            end

            SetParticleFxLoopedAlpha(EmoteMenu.PlayerParticles[serverId], color.A)
            SetParticleFxLoopedColour(EmoteMenu.PlayerParticles[serverId], color.R / 255, color.G / 255, color.B / 255, false)
        end
    else
        StopParticleFxLooped(EmoteMenu.PlayerParticles[serverId], false)
        RemoveNamedPtfxAsset(stateBag.ptfxAsset)
        EmoteMenu.PlayerParticles[serverId] = nil
    end
end)

-- Events
RegisterNetEvent('scully_emotemenu:cancelAnimation', function()
    EmoteMenu.CancelAnimation()
end)

RegisterNetEvent('scully_emotemenu:closeMenu', function()
    EmoteMenu.CloseMenu()
end)

RegisterNetEvent('scully_emotemenu:play', function(emoteData, emoteVariant)
    EmoteMenu.Play(emoteData, emoteVariant)
end)

RegisterNetEvent('scully_emotemenu:playByCommand', function(emoteCommand, emoteVariant)
    EmoteMenu.PlayByCommand(emoteCommand, emoteVariant)
end)

RegisterNetEvent('scully_emotemenu:playRegisteredEmote', function(emoteName)
    EmoteMenu.PlayRegisteredEmote(emoteName)
end)

RegisterNetEvent('scully_emotemenu:registerEmote', function(emoteData)
    EmoteMenu.RegisterEmote(emoteData)
end)

RegisterNetEvent('scully_emotemenu:resetExpression', function()
    EmoteMenu.ResetExpression()
end)

RegisterNetEvent('scully_emotemenu:setExpression', function(expression)
    EmoteMenu.SetExpression(expression)
end)

RegisterNetEvent('scully_emotemenu:resetWalk', function()
    EmoteMenu.ResetWalk()
end)

RegisterNetEvent('scully_emotemenu:setWalk', function(walk)
    EmoteMenu.SetWalk(walk)
end)

RegisterNetEvent('scully_emotemenu:toggleLimitation', function(_state)
    EmoteMenu.ToggleLimitation(_state)
end)

RegisterNetEvent('scully_emotemenu:toggleMenu', function()
    EmoteMenu.ToggleMenu()
end)

local IsControlJustPressed = IsControlJustPressed

RegisterNetEvent('scully_emotemenu:synchronizedEmoteRequest', function(sender, senderData, targetData)
    PlaySoundFrontend(-1, 'NAV', 'HUD_AMMO_SHOP_SOUNDSET', 0)
    EmoteMenu.ShowHelpAlert('fa-solid fa-question', ('[Y] - Accept, [N] - Deny: %s'):format(targetData.Label))
    while true do
        Wait(0)
        if IsControlJustPressed(0, 246) then
            lib.hideTextUI()
            TriggerServerEvent('scully_emotemenu:synchronizedEmoteResponse', sender, senderData, targetData)
            break
        elseif IsControlJustPressed(0, 306) then
            lib.hideTextUI()
            break
        end
    end
end)

RegisterNetEvent('scully_emotemenu:targetStartSynchronizedEmote', function(sender, senderData, targetData)
    local isValid = lib.requestAnimDict(targetData.Dictionary, 1000)
    if not isValid then
        EmoteMenu.Notify('error', 'That isn\'t a valid emote')
        return
    end

    if targetData.Options.Shared.Attach and not senderData.Options.Shared.Attach then
        local senderId = GetPlayerFromServerId(sender)
        local senderPed = GetPlayerPed(senderId)
        local bone = targetData.Options.Shared.Bone or -1
        local placement = targetData.Options.Shared.Placement
        local xP, yP, zP, xR, yR, zR = 0.0, 0.0, 0.0, 0.0, 0.0, 0.0
        if placement then
            xP, yP, zP, xR, yR, zR = placement[1].x, placement[1].y, placement[1].z, placement[2].x, placement[2].y, placement[2].z
        end
        AttachEntityToEntity(cache.ped, senderPed, GetPedBoneIndex(senderPed, bone), xP, yP, zP, xR, yR, zR, false, false, false, true, 1, true)
    end
    EmoteMenu.Play(targetData)
    EmoteMenu.OtherPlayer = sender
end)

RegisterNetEvent('scully_emotemenu:senderStartSynchronizedEmote', function(target, senderData)
    local isValid = lib.requestAnimDict(senderData.Dictionary, 1000)
    if not isValid then
        EmoteMenu.Notify('error', 'That isn\'t a valid emote')
        return
    end

    local targetId = GetPlayerFromServerId(target)
    local targetPed = GetPlayerPed(targetId)
    local frontOffset, sideOffset, heightOffset, headingOffset = 1.0, 0.0, 0.0, 180.1

    if senderData.Options.Shared.FrontOffset then
        frontOffset = senderData.Options.Shared.FrontOffset + 0.0
    end

    if senderData.Options.Shared.SideOffset then
        sideOffset = senderData.Options.Shared.SideOffset + 0.0
    end

    if senderData.Options.Shared.HeightOffset then
        heightOffset = senderData.Options.Shared.HeightOffset + 0.0
    end

    if senderData.Options.Shared.HeadingOffset then
        headingOffset = senderData.Options.Shared.HeadingOffset + 0.0
    end

    if senderData.Options.Shared.Attach then
        local bone = senderData.Options.Shared.Bone or -1
        local placement = senderData.Options.Shared.Placement
        local xP, yP, zP, xR, yR, zR = 0.0, 0.0, 0.0, 0.0, 0.0, 0.0
        if placement then
            xP, yP, zP, xR, yR, zR = placement[1].x, placement[1].y, placement[1].z, placement[2].x, placement[2].y, placement[2].z
        end
        AttachEntityToEntity(cache.ped, targetPed, GetPedBoneIndex(targetPed, bone), xP, yP, zP, xR, yR, zR, false, false, false, true, 1, true)
    end

    local targetCoords = GetOffsetFromEntityInWorldCoords(targetPed, sideOffset, frontOffset, heightOffset)
    local targetHeading = GetEntityHeading(targetPed)
    SetEntityHeading(cache.ped, targetHeading - headingOffset)
    SetEntityCoordsNoOffset(cache.ped, targetCoords.x, targetCoords.y, targetCoords.z, 0)
    EmoteMenu.Play(senderData)
    EmoteMenu.OtherPlayer = target
end)

RegisterNetEvent('scully_emotemenu:cancelSynchronizedEmote', function()
    EmoteMenu.Notify('error', 'The emote was cancelled!')
    EmoteMenu.OtherPlayer = nil
    EmoteMenu.CancelAnimation()
end)

-- Cache
lib.onCache('ped', function(playerPed)
    if cache.ped ~= playerPed then
        if EmoteMenu.CurrentExpression ~= 'default' then
            EmoteMenu.SetExpression(EmoteMenu.CurrentExpression)
        end
        if EmoteMenu.CurrentWalk ~= 'default' then
            EmoteMenu.SetWalk(EmoteMenu.CurrentWalk)
        end
    end
end)

AddEventHandler('playerSpawned', function()
    Wait(1000)
    if EmoteMenu.CurrentExpression ~= 'default' then
        EmoteMenu.SetExpression(EmoteMenu.CurrentExpression)
    end
    if EmoteMenu.CurrentWalk ~= 'default' then
        EmoteMenu.SetWalk(EmoteMenu.CurrentWalk)
    end
end)

AddEventHandler('entityDamaged', function(entity)
    if cache.ped == entity then
        if not IsPedFatallyInjured(cache.ped) then return end
        EmoteMenu.CancelAnimation()
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        EmoteMenu.CancelAnimation()
    end
end)
