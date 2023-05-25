Citizen.CreateThread(function()
    while true do
        local PlayerName = GetPlayerName(PlayerId())
        local id = GetPlayerServerId(PlayerId())
function players()
    local players = {}

    for i = 0, 31 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end
        -- This is the Application ID (Replace this with you own)
        SetDiscordAppId() --you can get your one here https://discord.com/developers/applications
        SetRichPresence("Player ID"..id.."") -- This will take the player name and the Id
        -- Here you will have to put the image name for the "large" icon.
        -- You can create one by go to Rich Presence/Art Assets tab in your application and  click Add Image(s)
        -- The Paramater is your Image key that you uploaded (you can change it too once you upload)
        SetDiscordRichPresenceAsset('yourimagenamehere')
        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('your server text here')
        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, "First Button")
        --You can add more Natives Here vvv
        SetDiscordRichPresenceAction(1, "Second Button")
                -- Updates every 1 minute
        Citizen.Wait(60000)
    end
end)
