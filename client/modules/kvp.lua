local kvp = {
    store = {}
}

function kvp.getString(name)
    local data = kvp.store[name]

    if not data then
        data = GetResourceKvpString(cache.resource .. ':' .. name)
        kvp.store[name] = data
    end

    return data
end

function kvp.getTable(name)
    local data = kvp.store[name]

    if not data then
        data = json.decode(GetResourceKvpString(cache.resource .. ':' .. name)) or {}
        kvp.store[name] = data
    end

    return data
end

function kvp.update(name, data)
    kvp.store[name] = data

    if type(data) == 'string' then
        SetResourceKvp(cache.resource .. ':' .. name, data)
    elseif type(data) == 'table' then
        SetResourceKvp(cache.resource .. ':' .. name, json.encode(data))
    end
end

function kvp.delete(name)
    kvp.store[name] = nil

    DeleteResourceKvp(cache.resource .. ':' .. name)
end

return kvp