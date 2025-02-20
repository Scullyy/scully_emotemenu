local utils = {}

---Remove multiple entries from a table
---@param _table table
---@param keep function
---@return table
function utils.filterTable(_table, keep)
    local _index = 1

    for i = 1, #_table do
        if keep(_table, i) then
            if i ~= _index then
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

if lib.context == 'client' then
    ---Display a notification
    ---@param _type string
    ---@param message string
    function utils.notify(_type, message)
        lib.notify({
            title = locale('emote_menu'),
            description = message,
            type = _type,
            duration = 3000
        })
    end
    exports('customNotifyFn', function(fn) if fn then utils.notify = fn end end)

    function utils.addCommand(commandName, properties, cb)
        RegisterCommand(commandName, function(source, args, raw)
            cb(source, args, raw)
        end, false)
    
        TriggerEvent('chat:addSuggestion', '/' .. commandName, properties.help, properties.params)
    end

    local mpPeds = { `mp_m_freemode_01`, `mp_f_freemode_01` }
    
    ---@param ped number
    ---@return boolean
    function utils.isPedMale(ped)
        local model = GetEntityModel(ped)

        if lib.table.contains(mpPeds, model) then
            return model == mpPeds[1]
        end
        
        return IsPedMale(ped)
    end
else
    ---Display a notification
    ---@param source number
    ---@param _type string
    ---@param message string
    function utils.notify(source, _type, message)
        lib.notify(source, {
            title = locale('emote_menu'),
            description = message,
            type = _type,
            duration = 3000
        })
    end
    exports('customNotifyFn', function(fn) if fn then utils.notify = fn end end)
end

return utils