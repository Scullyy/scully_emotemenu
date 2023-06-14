local gameBuild, currentWalk, currentExpression = GetGameBuildNumber(), GetResourceKvpString('animations_walkstyle') or 'default', GetResourceKvpString('animations_expression') or 'default'
local emoteBinds, isActionsLimited, isPlayingAnimation = json.decode(GetResourceKvpString('animations_binds')) or {}, false, false
local isRagdoll, isCrouched, isPointing = false, false, false
local ptfxCanHold, otherPlayer, playerProps = false, nil, {}
local playerParticles, keybinds, registeredEmotes = {}, {}, {}

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

local custom = require('custom_emotes')

AnimationList = {
    Walks = require('animations.walks'),
    Scenarios = require('animations.scenarios'),
    Expressions = require('animations.expressions'),
    Emotes = require('animations.emotes'),
    PropEmotes = require('animations.prop_emotes'),
    ConsumableEmotes = require('animations.consumable_emotes'),
    DanceEmotes = require('animations.dance_emotes'),
    SynchronizedEmotes = require('animations.synchronized_emotes'),
    AnimalEmotes = require('animations.animal_emotes')
}

-- Import customs animations
for _type, emoteList in pairs(custom) do
    for i = 1, #emoteList do
        AnimationList[_type][#AnimationList[_type] + 1] = emoteList[i] 
    end
end

-- Functions
---Closes the animation menu
function closeMenu()
    local currentMenu = lib.getOpenMenu()

    if (currentMenu == 'animations_main_menu') or (currentMenu == 'animations_emote_menu') then
        lib.hideMenu()
    end
end
exports('closeMenu', closeMenu)

---Toggles the animation menu
function toggleMenu()
    local currentMenu = lib.getOpenMenu()

    if not currentMenu then
        lib.showMenu('animations_main_menu')
    else
        closeMenu()
    end
end
exports('toggleMenu', toggleMenu)

---Toggle player limitations
---@param limited boolean
function setLimitation(limited)
    isActionsLimited = limited
end
exports('setLimitation', setLimitation)

---Check if the player is currently limited
---@return boolean
function isLimited()
    return isActionsLimited
end
exports('isLimited', isLimited)

---Remove multiple entries from a table
---@param _table table
---@param keep function
function removeFromTable(_table, keep)
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
function notify(_type, message)
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
function showHelpAlert(icon, text)
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
function registerEmote(emote)
    registeredEmotes[emote.Name] = emote
end
exports('registerEmote', registerEmote)

---Play a registered emote
---@param emote string
function playRegisteredEmote(emote)
    local registeredEmote = registeredEmotes[emote]

    if not registeredEmote then
        notify('error', 'That isn\'t a valid registered emote, please inform the server owner')
        return
    end

    if registeredEmote.Type == 'Walks' then
        setWalk(registeredEmote.Walk)
    else
        playEmote(registeredEmote, registeredEmote.Variant)
    end
end
exports('playRegisteredEmote', playRegisteredEmote)

---Remove emotes from the menu
---@param _type string
function removeEmotes(_type)
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
        AnimationList[checkMenus[i]] = removeFromTable(AnimationList[checkMenus[i]], function(_table, _index)
            return not _table[_index][_type]
        end)
    end
end

---Add emotes to the menu
---@param _type string
---@param command string
function addEmotesToMenu(_type, command)
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

---Add emotes to the radial menu
---@param _type string
---@param label string
---@param icon string
function addEmotesToRadial(_type, label, icon)
    local radialId = 'scully_emotemenu:' .. _type

    lib.registerRadial({
        id = radialId,
        items = {}
    })

    for emote = 1, #AnimationList[_type] do
        local _emote = AnimationList[_type][emote]

        if _emote and _emote.Label and not _emote.Hide then
            items[#items + 1] = {
                label = _emote.label,
                icon = icon,
                onSelect = function()
                    playEmoteByCommand(_emote.command)
                end
            }
        end
    end

    lib.addRadialItem({
        {
          id = radialId .. ':2',
          label = label,
          icon = icon,
          menu = radialId
        }
    })
end

---Remove attached props on the player
function removeProps()
    for i = 1, #playerProps do
        DeleteEntity(playerProps[i])
    end

    playerProps = {}
end

---Get an emote based on the command
---@param name string
---@return string _type Emote type
---@return table _emote Emote table
function getEmoteByCommand(name)
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
function isInEmote()
    return isPlayingAnimation
end
exports('isInEmote', isInEmote)

function requestSynchronizedEmote(senderData)
    local playerPos = GetEntityCoords(cache.ped)
    local targetId, targetPed, targetPos = lib.getClosestPlayer(playerPos, 3.0, false)

    if not targetId then
        notify('error', 'No player nearby!')
        return
    end

    local _type, emote = getEmoteByCommand(senderData.Options.Shared.OtherAnimation)

    if _type ~= 'SynchronizedEmotes' then
        notify('error', 'That isn\'t a valid synchronized emote, please inform the server owner')
        return
    end

    TriggerServerEvent('scully_emotemenu:requestSynchronizedEmote', GetPlayerServerId(targetId), senderData, emote)
end

---Play an emote by command
---@param command string
---@param variant number
function playEmoteByCommand(command, variant)
    local _type, emote = getEmoteByCommand(command)

    if not _type or (_type == 'Walks') then
        notify('error', 'That isn\'t a valid emote')
        return
    end

    if _type == 'SynchronizedEmotes' then
        requestSynchronizedEmote(emote)
        return
    end

    playEmote(emote, variant)
end
exports('playEmoteByCommand', playEmoteByCommand)

---Play an animation
---@param data table
---@param variation number
function playEmote(data, variation)
    if data.Expression then
        setExpression(data.Expression)
        return
    end

    if Config.EnableWeaponBlock and IsPedArmed(cache.ped, 7) then
        notify('error', 'You can\'t play animations with a weapon!')
        return 
    end

    local isInVehicle = IsPedInAnyVehicle(cache.ped, true)
    local duration, movementFlag = nil, isInVehicle and 51 or 0

    if not Config.AllowedInVehicles and isInVehicle then
        notify('error', 'You can\'t play animations in vehicles!')
        return
    end

    if #playerProps > 0 then
        removeProps()
    end

    if data.Scenario then
        if isInVehicle then
            notify('error', 'You can\'t play scenarios in vehicles!')
            return
        end

        ClearPedTasks(cache.ped)
        TaskStartScenarioInPlace(cache.ped, data.Scenario, 0, true)

        isPlayingAnimation = true
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
        notify('error', 'That isn\'t a valid emote')
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
            ptfxCanHold = data.Options.Ptfx.CanHold

            if Config.PtfxKeybind and not hasAutomatedPtfx then
                keybinds.PlayPtfx:disable(false)
                notify('success', ('Press %s to use the effect!'):format(GetControlInstructionalButton(0, joaat('+playptfx') | 0x80000000, 1):sub(3)))
            else
                keybinds.PlayPtfx:disable(true)
            end

            TriggerServerEvent('scully_emotemenu:syncPtfx', data.Options.Ptfx.Asset, data.Options.Ptfx.Name, data.Options.Ptfx.Placement, data.Options.Ptfx.Bone, data.Options.Ptfx.Color)
        else
            if Config.PtfxKeybind then keybinds.PlayPtfx:disable(true) end
        end
    end

    TaskPlayAnim(cache.ped, dictionaryName, animationName, 2.0, 2.0, duration or -1, movementFlag, 0, false, false, false)
    RemoveAnimDict(dictionaryName)

    isPlayingAnimation = true

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

                local object = addPropToPlayer(prop.Name, prop.Bone, prop.Placement, variant)

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
exports('playEmote', playEmote)

---Cancel the animation you're currently playing
function cancelEmote()
    if isPlayingAnimation then
        if IsPedUsingAnyScenario(cache.ped) then ClearPedTasksImmediately(cache.ped) end
        if LocalPlayer.state.ptfx then LocalPlayer.state:set('ptfx', false, true) end
        if Config.PtfxKeybind then keybinds.PlayPtfx:disable(true) end

        ClearPedTasks(cache.ped)
        DetachEntity(cache.ped, true, false)
        removeProps()

        isPlayingAnimation = false

        if otherPlayer then
            TriggerServerEvent('scully_emotemenu:cancelSynchronizedEmote', otherPlayer)

            otherPlayer = nil
        end
    end
end
exports('cancelEmote', cancelEmote)

---Get the players current expression
---@return string
function getCurrentExpression()
    return currentExpression
end
exports('getCurrentExpression', getCurrentExpression)

---Set the players current expression
---@param name string
function setExpression(name)
    SetFacialIdleAnimOverride(cache.ped, name, 0)
    SetResourceKvp('animations_expression', name)

    currentExpression = name
end
exports('setExpression', setExpression)

---Reset the players expression
function resetExpression()
    ClearFacialIdleAnimOverride(cache.ped)
    SetResourceKvp('animations_expression', 'default')

    currentExpression = 'default'
end
exports('resetExpression', resetExpression)

---Get the players current walk style
---@return string
function getCurrentWalk()
    return currentWalk
end
exports('getCurrentWalk', getCurrentWalk)

---Set the players current walk style
---@param name string
function setWalk(name)
    lib.requestAnimSet(name, 1000)
    SetPedMovementClipset(cache.ped, name, 0.2)
    RemoveAnimSet(name)
    SetResourceKvp('animations_walkstyle', name)

    currentWalk = name
end
exports('setWalk', setWalk)

---Reset the players walk style
function resetWalk()
    ResetPedMovementClipset(cache.ped)
    SetResourceKvp('animations_walkstyle', 'default')

    currentWalk = 'default'
end
exports('resetWalk', resetWalk)

---Attach a prop to the player
---@param prop string
---@param bone number
---@param placement table
---@param variant number
---@return number object Entity handle
function addPropToPlayer(prop, bone, placement, variant)
    local playerPos = GetEntityCoords(cache.ped)

    lib.requestModel(prop, 1000)
    local object = CreateObject(joaat(prop), playerPos.x, playerPos.y, playerPos.z + 0.2, true, true, true)

    SetEntityCollision(object, false, false)

    if variant then SetObjectTextureVariation(object, variant) end

    AttachEntityToEntity(object, cache.ped, GetPedBoneIndex(cache.ped, bone), placement[1].x, placement[1].y, placement[1].z, placement[2].x, placement[2].y, placement[2].z, true, true, false, true, 1, true)
    
    playerProps[#playerProps + 1] = object
    
    SetModelAsNoLongerNeeded(prop)
    
    return object
end

---Remove unsupported emotes
function removeUnsupportedEmotes()
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
            AnimationList[checkMenus[i]] = removeFromTable(AnimationList[checkMenus[i]], function(_table, _index)
                local animation, doesExist = _table[_index], true

                if gameBuild < 2699 then
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
function searchMenu(query)
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
        notify('error', 'No animations found')
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
        if isActionsLimited then return end

        local _type, emote = getEmoteByCommand(option)

        if not _type then
            notify('error', 'That isn\'t a valid emote or walk style')
            return
        end

        if _type == 'Walks' then
            setWalk(emote.Walk)
            return
        end

        if _type == 'SynchronizedEmotes' then
            requestSynchronizedEmote(emote)
            return
        end

        playEmote(emote)
    end)
    lib.showMenu('animations_search_menu')
end

---Create an emote bind
---@param index number
---@param emote table
function createBind(index, emote)
    Wait(500)

    emoteMenuBindsOptions[index] = {label = emote.Label, description = 'Click to delete the bind', icon = ('fa-solid fa-%s'):format(index), args = index}
    emoteBinds[index] = {Index = index, Label = emote.Label, Emote = emote.Command}

    SetResourceKvp('animations_binds', json.encode(emoteBinds))
    notify('success', ('%s has been binded!'):format(emote.Label))
    openBindMenu()
end

---Delete an emote bind
---@param index number
function deleteBind(index)
    Wait(500)

    emoteMenuBindsOptions[index] = {label = 'None', description = 'Select to create a new emote bind', icon = 'fa-solid fa-1', args = 'animations_create_bind'}
    emoteBinds = removeFromTable(emoteBinds, function(_table, _index)
        return _table[_index].Index ~= index
    end)

    SetResourceKvp('animations_binds', json.encode(emoteBinds))
    notify('error', 'The bind has been deleted!')
    openBindMenu()
end

---Open the emote bind menu
function openBindMenu()
    lib.registerMenu({
        id = 'animations_emote_binds_menu',
        title = 'Animation Menu',
        position = Config.MenuPosition,
        options = emoteMenuBindsOptions,
        onClose = function(_)
            lib.showMenu('animations_main_menu')
        end,
    }, function(selected, scrollIndex, option)
        if isActionsLimited then return end

        if option == 'animations_create_bind' then
            local query = lib.inputDialog('Create Emote Bind', {'Emote Command Name'})

            if not query then return end

            local _type, emote = getEmoteByCommand(query[1])
            
            if not _type or (_type == 'Walks') then
                notify('error', 'That isn\'t a valid emote')
                return
            end

            if emote.BlockBinding then
                notify('error', 'You\'re not allowed to bind this emote')
                return
            end

            createBind(selected, emote)

            return
        end

        deleteBind(option)
    end)

    lib.showMenu('animations_emote_binds_menu')
end

local IsPedFalling = IsPedFalling
local IsPedJumping = IsPedJumping
local IsPedUsingActionMode = IsPedUsingActionMode
local SetPedUsingActionMode = SetPedUsingActionMode
local SetPedCanPlayAmbientAnims = SetPedCanPlayAmbientAnims

---Crouch loop
function CrouchLoop()
    CreateThread(function()
        while isCrouched do
            Wait(0)
            
            if cache.vehicle then 
                isCrouched = false
                break
            end

            if IsPedFalling(cache.ped) then 
                isCrouched = false
                break
            end

            if IsPedJumping(cache.ped) then 
                isCrouched = false
                break
            end

            if IsPedUsingActionMode(cache.ped) == 1 then
                SetPedUsingActionMode(cache.ped, false, -1, 'DEFAULT_ACTION')
            end

            SetPedCanPlayAmbientAnims(cache.ped, false)
        end
    end)
end

-- Add / Remove options
removeUnsupportedEmotes()

if not Config.EnableNSFWEmotes then
    removeEmotes('NSFW')
end

if not Config.EnableGangEmotes then
    removeEmotes('Gang')
end

if not Config.EnableSocialMovementEmotes then
    removeEmotes('SocialMovement')
end

addEmotesToMenu('Emotes', Config.EmotePlayCommands[1])
addEmotesToMenu('PropEmotes', Config.EmotePlayCommands[1])
addEmotesToMenu('DanceEmotes', Config.EmotePlayCommands[1])
addEmotesToMenu('Walks', Config.WalkSetCommands[1])
addEmotesToMenu('Scenarios', Config.EmotePlayCommands[1])
addEmotesToMenu('Expressions', Config.EmotePlayCommands[1])

if Config.EnableRadialMenu then
    addEmotesToRadial('Walks', 'Walk Styles', 'person-walking')
    addEmotesToRadial('Expressions', 'Expressions', 'face-angry')
end

if not Config.EnableSearch then
    mainMenuOptions = removeFromTable(mainMenuOptions, function(_table, _index)
        return _table[_index].args ~= 'animations_search'
    end)
end

if Config.EnableEmoteBinds then
    local binds = emoteBinds

    for i = 1, 5 do
        local command = ('emotebind-%s'):format(i)

        RegisterCommand(command, function()
            local bind = emoteBinds[i]
            if bind then
                playEmoteByCommand(bind.Emote)
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
    mainMenuOptions = removeFromTable(mainMenuOptions, function(_table, _index)
        return _table[_index].args ~= 'animations_emote_binds_menu'
    end)
end

if Config.EnableConsumableEmotes then
    addEmotesToMenu('ConsumableEmotes', Config.EmotePlayCommands[1])
else
    emoteMenuOptions = removeFromTable(emoteMenuOptions, function(_table, _index)
        return _table[_index].args ~= 'ConsumableEmotes'
    end)
end

if Config.EnableSynchronizedEmotes then
    addEmotesToMenu('SynchronizedEmotes', Config.EmotePlayCommands[1])
else
    emoteMenuOptions = removeFromTable(emoteMenuOptions, function(_table, _index)
        return _table[_index].args ~= 'SynchronizedEmotes'
    end)
end

if Config.EnableAnimalEmotes then
    addEmotesToMenu('AnimalEmotes', Config.EmotePlayCommands[1])
else
    emoteMenuOptions = removeFromTable(emoteMenuOptions, function(_table, _index)
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
    if isActionsLimited then return end

    if option == 'animations_search' then
        local query = lib.inputDialog('Animation Search', {'Animation'})

        if not query then return end

        searchMenu(string.lower(query[1]))

        return
    elseif option == 'animations_emote_binds_menu' then
        openBindMenu()

        return
    elseif option == 'animations_emote_menu' then
        lib.showMenu('animations_emote_menu')

        return
    elseif option == 'cancel' then
        if scrollIndex == 1 then
            cancelEmote()
        elseif scrollIndex == 2 then
            resetWalk()
        elseif scrollIndex == 3 then
            resetExpression()
        elseif scrollIndex == 4 then
            cancelEmote()
            resetWalk()
            resetExpression()
        end

        return
    end

    local emote = AnimationList[option][scrollIndex]

    if not emote then
        notify('error', 'That isn\'t a valid option, please inform the server owner')

        return
    end

    if option == 'Walks' then
        setWalk(emote.Walk)

        return
    end

    playEmote(emote)
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
    if isActionsLimited then return end

    local emote = AnimationList[option][scrollIndex]

    if not emote then
        notify('error', 'That isn\'t a valid emote')

        return
    end

    if option == 'SynchronizedEmotes' then
        requestSynchronizedEmote(emote)

        return
    end

    playEmote(emote)
end)

-- Commands
for i = 1, #Config.MenuOpenCommands do
    RegisterCommand(Config.MenuOpenCommands[i], function(source, args, rawCommand)
        if isActionsLimited then return end

        toggleMenu()
    end, false)
end

for i = 1, #Config.EmotePlayCommands do
    RegisterCommand(Config.EmotePlayCommands[i], function(source, args, rawCommand)
        if isActionsLimited then return end

        if not args[1] then
            notify('error', 'You need to provide a valid emote!')

            return
        end

        local emoteName = args[1]:lower()

        if emoteName == 'c' then
            cancelEmote()

            return
        end

        local _type, emote = getEmoteByCommand(emoteName)

        if not _type or (_type == 'Walks') then
            notify('error', 'That isn\'t a valid emote')

            return
        end

        if _type == 'SynchronizedEmotes' then
            requestSynchronizedEmote(emote)

            return
        end

        local variant = nil
        local selectedVariant = args[2]

        if selectedVariant then
            local index = tonumber(selectedVariant)

            if index then variant = index end
        end

        playEmote(emote, variant)
    end, false)
end

for i = 1, #Config.WalkSetCommands do
    RegisterCommand(Config.WalkSetCommands[i], function(source, args, rawCommand)
        if isActionsLimited then return end

        if not args[1] then
            notify('error', 'You need to provide a valid emote!')

            return
        end

        if args[1]:lower() == 'c' then
            resetWalk()

            return
        end

        local _type, emote = getEmoteByCommand(args[1])

        if not _type or (_type ~= 'Walks') then
            notify('error', 'That isn\'t a valid walk style')

            return
        end

        setWalk(emote.Walk)
    end, false)
end

-- Keybinds
if Config.MenuKeybind ~= '' then
    if #Config.MenuOpenCommands > 0 then
        RegisterKeyMapping(Config.MenuOpenCommands[1], 'Open the animation menu', 'keyboard', Config.MenuKeybind)
    end
end

if Config.CancelEmoteKey ~= '' then
    keybinds.CancelKey = lib.addKeybind({
        name = 'ecancel',
        description = 'Cancel animation',
        defaultKey = Config.CancelEmoteKey,
        onPressed = function(key)
            cancelEmote()
        end
    })
end

if Config.RagdollKeybind ~= '' then
    local IsPedOnFoot = IsPedOnFoot
    local SetPedToRagdoll = SetPedToRagdoll

    keybinds.Ragdoll = lib.addKeybind({
        name = 'ragdoll',
        description = 'Ragdoll your character',
        defaultKey = Config.RagdollKeybind,
        onPressed = function(key)
            if isActionsLimited or isPlayingAnimation then return end

            isRagdoll = not isRagdoll

            while isRagdoll do
                Wait(0)
                if isActionsLimited then
                    isRagdoll = false
                    break
                end

                if IsPedOnFoot(cache.ped) then
                    SetPedToRagdoll(cache.ped, 1000, 1000, 0, 0, 0, 0)
                end
            end
        end
    })
end

if Config.HandsUpKey ~= '' then
    keybinds.HandsUp = lib.addKeybind({
        name = 'handsup',
        description = 'Put your hands up',
        defaultKey = Config.HandsUpKey,
        onPressed = function(key)
            if isActionsLimited then return end

            lib.requestAnimDict('random@mugging3', 1000)
            TaskPlayAnim(cache.ped, 'random@mugging3', 'handsup_standing_base', 8.0, 8.0, -1, 50, 0, false, false, false)
        end,
        onReleased = function(key)
            ClearPedTasks(cache.ped)
        end
    })
end

if Config.CrouchKey ~= '' then
    keybinds.Crouch = lib.addKeybind({
        name = 'crouch',
        description = 'Crouch',
        defaultKey = Config.CrouchKey,
        onPressed = function(key)
            DisableControlAction(0, 36, true)
            
            if isActionsLimited or cache.vehicle then return end

            isCrouched = not isCrouched

            if isCrouched then
                lib.requestAnimSet('move_ped_crouched', 1000)
                SetPedMovementClipset(cache.ped, 'move_ped_crouched', 1.0)
                SetPedWeaponMovementClipset(cache.ped, 'move_ped_crouched', 1.0)
                SetPedStrafeClipset(cache.ped, 'move_ped_crouched_strafing', 1.0)
                CrouchLoop()
            else
                if currentWalk == 'default' then
                    ResetPedMovementClipset(cache.ped, 1.0)
                else
                    lib.requestAnimSet(currentWalk, 1000)
                    SetPedMovementClipset(cache.ped, currentWalk, 1.0)
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

    keybinds.Point = lib.addKeybind({
        name = 'point',
        description = 'Point',
        defaultKey = Config.PointKey,
        onPressed = function(key)
            if isActionsLimited then return end

            isPointing = not isPointing

            if isPointing then
                if cache.vehicle then return end

                lib.requestAnimDict('anim@mp_point', 1000)
                SetPedCurrentWeaponVisible(cache.ped, 0, true, true, true)
                SetPedConfigFlag(cache.ped, 36, 1)
                TaskMoveNetworkByName(cache.ped, 'task_mp_pointing', 0.5, false, 'anim@mp_point', 24)
                RemoveAnimDict('anim@mp_point')
                CreateThread(function()
                    while isPointing do
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
    keybinds.PlayPtfx = lib.addKeybind({
        name = 'playptfx',
        disabled = true,
        description = 'Play your selected particle effect',
        defaultKey = Config.PtfxKeybind,
        onPressed = function(key)
            LocalPlayer.state:set('ptfx', true, true)

            if not ptfxCanHold then
                LocalPlayer.state:set('ptfx', false, true)
            end
        end,
        onReleased = function(key)
            if ptfxCanHold then
                LocalPlayer.state:set('ptfx', false, true)
            end
        end
    })
end

-- State Bag Handlers
AddStateBagChangeHandler('ptfx', nil, function(bagName, key, value, _unused, replicated)
    local serverId = tonumber(bagName:gsub('player:', ''), 10)

    if (playerParticles[serverId] and value) or (not playerParticles[serverId] and not value) then return end

    local playerId = GetPlayerFromServerId(serverId)

    if not playerId then return end

    local playerPed = GetPlayerPed(playerId)
    local stateBag = Player(serverId).state

    if value then
        local asset, name, offset, rot, scale, color, propNet, entityTarget = stateBag.ptfxAsset, stateBag.ptfxName, stateBag.ptfxOffset, stateBag.ptfxRot, stateBag.ptfxScale or 1, stateBag.ptfxColor, stateBag.ptfxPropNet, playerPed
        local boneIndex = stateBag.ptfxBone and GetPedBoneIndex(playerPed, stateBag.ptfxBone) or GetEntityBoneIndexByName(name, "VFX")

        if propNet then
            local propObj = NetToObj(propNet)
            if DoesEntityExist(propObj) then entityTarget = propObj end
        end

        lib.requestNamedPtfxAsset(asset, 1000)
        UseParticleFxAsset(asset)
        playerParticles[serverId] = StartParticleFxLoopedOnEntityBone(name, entityTarget, offset.x, offset.y, offset.z, rot.x, rot.y, rot.z, boneIndex, scale + 0.0, false, false, false)

        if color then
            if color[1] and type(color[1]) == 'table' then
                local randomIndex = math.random(1, #color)

                color = color[randomIndex]
            end

            SetParticleFxLoopedAlpha(playerParticles[serverId], color.A)
            SetParticleFxLoopedColour(playerParticles[serverId], color.R / 255, color.G / 255, color.B / 255, false)
        end
    else
        StopParticleFxLooped(playerParticles[serverId], false)
        RemoveNamedPtfxAsset(stateBag.ptfxAsset)
        playerParticles[serverId] = nil
    end
end)

-- Events
RegisterNetEvent('scully_emotemenu:cancelEmote', function()
    cancelEmote()
end)

RegisterNetEvent('scully_emotemenu:closeMenu', function()
    closeMenu()
end)

RegisterNetEvent('scully_emotemenu:play', function(emoteData, emoteVariant)
    playEmote(emoteData, emoteVariant)
end)

RegisterNetEvent('scully_emotemenu:playByCommand', function(emoteCommand, emoteVariant)
    playEmoteByCommand(emoteCommand, emoteVariant)
end)

RegisterNetEvent('scully_emotemenu:playRegisteredEmote', function(emoteName)
    playRegisteredEmote(emoteName)
end)

RegisterNetEvent('scully_emotemenu:registerEmote', function(emoteData)
    registerEmote(emoteData)
end)

RegisterNetEvent('scully_emotemenu:resetExpression', function()
    resetExpression()
end)

RegisterNetEvent('scully_emotemenu:setExpression', function(expression)
    setExpression(expression)
end)

RegisterNetEvent('scully_emotemenu:resetWalk', function()
    resetWalk()
end)

RegisterNetEvent('scully_emotemenu:setWalk', function(walk)
    setWalk(walk)
end)

RegisterNetEvent('scully_emotemenu:toggleLimitation', function(_state)
    setLimitation(_state)
end)

RegisterNetEvent('scully_emotemenu:toggleMenu', function()
    toggleMenu()
end)

local IsControlJustPressed = IsControlJustPressed

RegisterNetEvent('scully_emotemenu:synchronizedEmoteRequest', function(sender, senderData, targetData)
    PlaySoundFrontend(-1, 'NAV', 'HUD_AMMO_SHOP_SOUNDSET', 0)
    showHelpAlert('fa-solid fa-question', ('[Y] - Accept, [N] - Deny: %s'):format(targetData.Label))

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
        notify('error', 'That isn\'t a valid emote')
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

    playEmote(targetData)
    otherPlayer = sender
end)

RegisterNetEvent('scully_emotemenu:senderStartSynchronizedEmote', function(target, senderData)
    local isValid = lib.requestAnimDict(senderData.Dictionary, 1000)

    if not isValid then
        notify('error', 'That isn\'t a valid emote')
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
    playEmote(senderData)

    otherPlayer = target
end)

RegisterNetEvent('scully_emotemenu:cancelSynchronizedEmote', function()
    otherPlayer = nil

    notify('error', 'The emote was cancelled!')
    cancelEmote()
end)

-- Cache
lib.onCache('ped', function(playerPed)
    if cache.ped ~= playerPed then
        if currentExpression ~= 'default' then
            setExpression(currentExpression)
        end

        if currentWalk ~= 'default' then
            setWalk(currentWalk)
        end
    end
end)

AddEventHandler('playerSpawned', function()
    Wait(1000)
    if currentExpression ~= 'default' then
        setExpression(currentExpression)
    end

    if currentWalk ~= 'default' then
        setWalk(currentWalk)
    end
end)

AddEventHandler('entityDamaged', function(entity)
    if cache.ped == entity then
        if not IsPedFatallyInjured(cache.ped) then return end
        
        cancelEmote()
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        cancelEmote()
    end
end)
