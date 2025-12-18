local function trim(s)
    return s:match('^%s*(.-)%s*$') or ''
end

local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)

local repositoryUrl = 'https://raw.githubusercontent.com/masked1337/masked-smallresources/main/version.txt'

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        PerformHttpRequest(repositoryUrl, function(errorCode, newestVersion, headers)
            if errorCode == 200 and newestVersion then
                newestVersion = trim(newestVersion)
                currentVersion = trim(currentVersion)

                if newestVersion ~= currentVersion then
                    print(string.format(
                        '\n\n^1[WARNING]^3 Your script is outdated! Current version: v%s | Latest version: v%s\nDownload the latest version from: ^9https://github.com/masked1337/masked-smallresources\n\n',
                        currentVersion, newestVersion))
                else
                    print(string.format(
                        '\n\n^2[SUCCESS]^3 Your script is up-to-date! Version: v%s\n\n',
                        currentVersion))
                end
            else
                print('\n\n^1[ERROR]^3 Failed to check for updates. Could not reach GitHub.\n')
            end
        end)
    end
end)
