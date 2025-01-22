local firstCheck = true
local resourceName = GetCurrentResourceName()
local scriptName = GetResourceMetadata(resourceName, 'name')
local currentVersion = GetResourceMetadata(resourceName, 'version')
local colorCode = ('\27[38;2;%d;%d;%dm'):format(46, 164, 247)

local function printUpdateInfo(message)
    print(('%s[%s]^7 %s^7'):format(colorCode, resourceName, message))
end

local function checkResourceVersion()
    Wait(1000)

    if resourceName ~= scriptName then
        printUpdateInfo('^1The resource must be named ^2' .. scriptName .. '^1, change the name back and try again.')
        StopResource(resourceName)
        return
    end

    PerformHttpRequest('https://raw.githubusercontent.com/Scullyy/version_checks/main/' .. resourceName .. '.txt', function(err, text, headers)
        if not text then
            if firstCheck then
                printUpdateInfo('^1The version check has failed, this is likely due to GitHub being down.')
            end

            return
        end

        local versionInfo = json.decode(text)

        if versionInfo.version == currentVersion then
            if firstCheck then
                printUpdateInfo('You are currently running the latest version.')
            end

            return
        end

        local logCount = #versionInfo.updateLog
        local message = 'This resource has been updated, please update to version ^2' .. versionInfo.version .. '^7.\n'

        for i = 1, logCount do
            local entry = versionInfo.updateLog[i]

            message = message .. colorCode .. '[' .. resourceName .. ']^7 - ' .. entry .. (i ~= logCount and '\n' or '')
        end

        printUpdateInfo(message)

        if firstCheck then firstCheck = false end
        
        SetTimeout(3600000, checkResourceVersion)
    end)
end

CreateThread(checkResourceVersion)