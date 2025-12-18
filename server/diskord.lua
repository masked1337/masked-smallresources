RegisterServerEvent("masked-smallresources:getPlayerCount")
AddEventHandler("masked-smallresources:getPlayerCount", function()
    TriggerClientEvent("masked-smallresources:playerCount", source, #GetPlayers())
end)
