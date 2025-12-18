--- https://discord.gg/PmfctTx6rH
--- https://discord.gg/PmfctTx6rH
--- https://discord.gg/PmfctTx6rH
--- https://discord.gg/PmfctTx6rH
if Config.AimAssist then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(500) 
            local weaponHash = GetSelectedPedWeapon(PlayerPedId())
            if weaponHash and weaponHash ~= GetHashKey("WEAPON_PISTOL") then
                SetPlayerLockonRangeOverride(PlayerId(), 0.0)
            end
        end
    end)
end
--- https://discord.gg/PmfctTx6rH
--- https://discord.gg/PmfctTx6rH
--- https://discord.gg/PmfctTx6rH
--- https://discord.gg/PmfctTx6rH
