local preview = {}

---Finish an emote preview
function preview.finish()
    for i = 1, #preview.props do
        local entity = preview.props[i].entity

        if DoesEntityExist(entity) then
            DeleteEntity(entity)
        end
    end

    DeleteEntity(preview.ped)
end

---Create the preview ped
---@param previewModel? number
function preview.createPreviewPed(previewModel)
    local ped

    if previewModel then
        local coords = GetEntityCoords(cache.ped)

        lib.requestModel(previewModel)

        ped = CreatePed(0, previewModel, coords.x, coords.y, coords.z, 0.0, false, false)

        SetModelAsNoLongerNeeded(previewModel)
    else
        ped = ClonePed(cache.ped, false, false, true)
    end

    SetEntityCollision(ped, false, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityAlpha(ped, 254, false)

    local buffers = {}

    CreateThread(function()
        while DoesEntityExist(ped) do
            Wait(0)

            local worldVector, normalVector = GetWorldCoordFromScreenCoord(0.65, 0.65)
            local buffer = worldVector + normalVector * 4.0
            local camRot = GetGameplayCamRot(2)

            buffers[#buffers + 1] = buffer

            if #buffers > 5 then
                buffers = Utils.filterTable(buffers, function(_, index)
                    return index ~= 1
                end)
            end

            local previewCoords = vec3(0.0, 0.0, 0.0)

            for i = 1, #buffers do
                previewCoords += buffers[i]
            end

            previewCoords = previewCoords / #buffers

            SetEntityCoords(ped, previewCoords.x, previewCoords.y, previewCoords.z)
            SetEntityRotation(ped, camRot.x * -1, 0.0, camRot.z + 180.0, 2, false)
        end
    end)

    return ped
end

---Preview an emote
---@param data table
function preview.showEmote(data)
    if preview.ped and DoesEntityExist(preview.ped) then
        preview.finish()
    end

    local previewModel

    if data.PedTypes then
        local pedType = data.PedTypes[math.random(1, #data.PedTypes)]
        previewModel = PedTypes[pedType][math.random(1, #PedTypes[pedType])]
    end

    if not preview.id then preview.id = 0 end

    preview.id += 1

    local previewId = preview.id

    preview.ped = preview.createPreviewPed(previewModel)
    preview.props = {}

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
        DeleteEntity(preview.ped)
        return
    end

    if data.NSFW and Config.enableNSFWEmotes == 'limited' and not PlayerState.allowNSFWEmotes then
        Utils.notify('error', locale('nsfw_limited'))
        DeleteEntity(preview.ped)
        return
    end

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

                local previewProp = {
                    hash = joaat(prop.Name),
                    bone = prop.Bone,
                    placement = prop.Placement,
                    variant = prop.Variant,
                    hasPtfx = options?.Ptfx?.AttachToProp
                }

                lib.requestModel(previewProp.hash)

                local previewCoords = GetEntityCoords(preview.ped)
                local object = CreateObject(previewProp.hash, previewCoords.x, previewCoords.y, previewCoords.z, false, false, false)

                SetEntityCollision(object, false, false)
                AttachEntityToEntity(object, preview.ped, GetPedBoneIndex(preview.ped, previewProp.bone), previewProp.placement[1].x, previewProp.placement[1].y, previewProp.placement[1].z, previewProp.placement[2].x, previewProp.placement[2].y, previewProp.placement[2].z, true, true, false, true, 1, true)
                SetEntityAlpha(object, 254, false)
                SetModelAsNoLongerNeeded(previewProp.hash)

                preview.props[i] = {
                    entity = object,
                    hasPtfx = previewProp.hasPtfx
                }
            end
        end
    end

    TaskPlayAnim(preview.ped, dictionaryName, animationName, 2.0, 2.0, duration or -1, movementFlag, 0, false, false, false)
    RemoveAnimDict(dictionaryName)

    local secondaryEmote = options?.SecondaryEmote

    if secondaryEmote then
        local isSecondaryValid = lib.requestAnimDict(secondaryEmote.Dictionary, 1000)

        if not isSecondaryValid then
            Utils.notify('error', locale('not_valid_emote'))
            DeleteEntity(preview.ped)
            return
        end

        TaskPlayAnim(preview.ped, secondaryEmote.Dictionary, secondaryEmote.Animation, 2.0, 2.0, secondaryEmote.Duration or -1, 51, 0, false, false, false)
        RemoveAnimDict(secondaryEmote.Dictionary)
    end

    Wait(5000)

    if previewId == preview.id then
        preview.finish()
    end
end

return preview