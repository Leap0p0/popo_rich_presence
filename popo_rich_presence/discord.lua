print ("^5Crée par : p0p0_l4_t4nch3#1847") 
print ("^3Discord  : https://discord.gg/yQcMBUUkNc") 
print ("^3Info     : Partager le 21/12/2022")


Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        
        Citizen.Wait(5*1000) -- checks every 5 seconds (to limit resource usage)
        
        SetDiscordAppId(000000000000) -- client id (int)(to change)

        SetRichPresence( GetPlayerName(PlayerId()) .. " is on " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player))) )) -- main text (string)

        SetDiscordRichPresenceAsset("big") -- large logo key (string)
        SetDiscordRichPresenceAssetText(GetPlayerName(PlayerId())) -- Large logo "hover" text (string)

        SetDiscordRichPresenceAssetSmall("little") -- small logo key (string)
        SetDiscordRichPresenceAssetSmallText("Health: "..(GetEntityHealth(player)-100)) -- small logo "hover" text (string)

    end
end)