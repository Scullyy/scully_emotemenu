local placement = {}

---Finish the emote placement
---@param location vector3
---@param heading number
---@param data table
function placement.finish(location, heading, data)
    if DoesEntityExist(placement.ped) then DeleteEntity(placement.ped) end

    lib.hideTextUI()
    TaskGoToCoordAnyMeans(cache.ped, location.x, location.y, location.z, 1.0, 0, false, 786603, 0xbf800000)

    local coords = GetEntityCoords(cache.ped)

    lib.showTextUI(locale('right_click_to_cancel'))

    while #(coords - location) > 1.5 do
        Wait(0)

        coords = GetEntityCoords(cache.ped)

        if IsControlJustPressed(0, 177) then
            lib.hideTextUI()
            ClearPedTasks(cache.ped)

            location = vec3(0)
            break
        end
    end

    lib.hideTextUI()

    if location ~= vec3(0) then
        SetEntityCoords(cache.ped, location.x, location.y, location.z, false, false, false, false)

        data.Advanced = {
            Coords = location,
            Heading = heading,
        }

        PlayEmote(data)
    end
end

---Start the emote placement
---@param data table
function placement.start(data)
    if placement.ped and DoesEntityExist(placement.ped) then return end

    placement.ped = ClonePed(cache.ped, false, false, true)

    FreezeEntityPosition(placement.ped, true)
    SetEntityAlpha(placement.ped, 0, false)

    local duration, movementFlag = nil, 0
    local dictionaryName, animationName = data.Dictionary, data.Animation

    if type(dictionaryName) == 'table' and type(animationName) == 'table' then
        local randomIndex = math.random(1, #animationName)

        dictionaryName = dictionaryName[randomIndex]
        animationName = animationName[randomIndex]
    end

    local isValid = lib.requestAnimDict(dictionaryName)

    if not isValid then
        Utils.notify('error', locale('not_valid_emote'))
        DeleteEntity(placement.ped)
        return
    end

    if data.NSFW and Config.enableNSFWEmotes == 'limited' and not PlayerState.allowNSFWEmotes then
        Utils.notify('error', locale('nsfw_limited'))
        DeleteEntity(placement.ped)
        return
    end

    local placementProps = {}
    local options = data.Options

    if options then
        duration = options.duration

        if options.Delay then Wait(options.Delay) end

        if options.Flags then
            movementFlag = options.Flags.Stuck and 50 or options.Flags.Move and 51 or options.Flags.Loop and 1 or movementFlag

            if options.Flags.Loop then
                lastEmote, lastVariant = data, variation
            end
        end

        if options.Props then
            for i = 1, #options.Props do
                local prop = options.Props[i]
                
                if variation then
                    if prop.Variations and prop.Variations[variation] then
                        prop.Variant = prop.Variations[variation]
                    end
                end

                local placementProp = {
                    hash = joaat(prop.Name),
                    bone = prop.Bone,
                    placement = prop.Placement,
                    variant = prop.Variant,
                    hasPtfx = options?.Ptfx?.AttachToProp
                }

                lib.requestModel(placementProp.hash)

                local placementCoords = GetEntityCoords(placement.ped)
                local object = CreateObject(placementProp.hash, placementCoords.x, placementCoords.y, placementCoords.z, false, false, false)

                SetEntityCollision(object, false, false)
                AttachEntityToEntity(object, placement.ped, GetPedBoneIndex(placement.ped, placementProp.bone), placementProp.placement[1].x, placementProp.placement[1].y, placementProp.placement[1].z, placementProp.placement[2].x, placementProp.placement[2].y, placementProp.placement[2].z, true, true, false, true, 1, true)
                SetModelAsNoLongerNeeded(placementProp.hash)

                placementProps[i] = {
                    entity = object,
                    hasPtfx = placementProp.hasPtfx
                }
            end
        end
    end

    TaskPlayAnim(placement.ped, dictionaryName, animationName, 2.0, 2.0, duration or -1, movementFlag, 0, false, false, false)
    RemoveAnimDict(dictionaryName)

    local secondaryEmote = options?.SecondaryEmote

    if secondaryEmote then
        local isSecondaryValid = lib.requestAnimDict(secondaryEmote.Dictionary, 1000)

        if not isSecondaryValid then
            Utils.notify('error', locale('not_valid_emote'))
            DeleteEntity(placement.ped)
            return
        end

        TaskPlayAnim(placement.ped, secondaryEmote.Dictionary, secondaryEmote.Animation, 2.0, 2.0, secondaryEmote.Duration or -1, 51, 0, false, false, false)
        RemoveAnimDict(secondaryEmote.Dictionary)
    end

    SetEntityCollision(placement.ped, false, false)
    SetEntityAlpha(placement.ped, 200, false)
    SetBlockingOfNonTemporaryEvents(placement.ped, true)

    local currentCoords = nil
    local heading = GetEntityHeading(cache.ped) + 90.0

    lib.showTextUI(locale('placement_text'))

    CreateThread(function()
        local offsetZ = 0.0
        local hit, _, endCoords

        CreateThread(function()
            while DoesEntityExist(placement.ped) do
                hit, _, endCoords = lib.raycast.cam(511, 7)
                Wait(5)
            end
        end)

        while DoesEntityExist(placement.ped) do
            Wait(0)

            DisableControlAction(0, 22, true)

            if hit then
                currentCoords = endCoords

                SetEntityCoords(placement.ped, currentCoords.x, currentCoords.y, currentCoords.z + offsetZ, false, false, false, false)
                SetEntityHeading(placement.ped, heading)
            end

            if IsDisabledControlJustPressed(0, 14) then
                heading += 5

                if heading > 360 then heading = 0.0 end
            elseif IsDisabledControlJustPressed(0, 15) then
                heading -= 5

                if heading < 0 then heading = 360.0 end
            elseif IsDisabledControlPressed(0, 27) then
                offsetZ += 0.01

                if offsetZ > 1.0 then offsetZ = 1.0 end
            elseif IsDisabledControlPressed(0, 173) then
                offsetZ -= 0.01

                if offsetZ < -1.0 then offsetZ = -1.0 end
            end

            if IsControlJustPressed(0, 201) then
                local coords = GetEntityCoords(cache.ped)
                local distance = #(coords - currentCoords)

                if distance < 5.0 then
                    placement.finish(GetEntityCoords(placement.ped), GetEntityHeading(placement.ped), lib.table.deepclone(data))
                else
                    Utils.notify('error', locale('too_far'))
                end
            elseif IsControlJustPressed(0, 177) then
                if DoesEntityExist(placement.ped) then DeleteEntity(placement.ped) end

                lib.hideTextUI()
            end
        end

        for i = 1, #placementProps do
            local entity = placementProps[i].entity
    
            if DoesEntityExist(entity) then
                DeleteEntity(entity)
            end
        end
    end)
end

return placement