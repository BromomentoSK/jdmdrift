local listOn = false

Citizen.CreateThread(function()
    listOn = false
    while true do
        Wait(0)

        if IsControlPressed(0, 166)--[[ INPUT_PHONE ]] then
            if not listOn then
                local players = {}
                local ptable = GetActivePlayers()
                for _, i in ipairs(ptable) do
                    local wantedLevel = GetPlayerWantedLevel(i)
                    r, g, b = GetPlayerRgbColour(i)
                    table.insert(players, 
                     '<tr style=\"color: rgb(' .. 255 .. ', ' .. 255 .. ', ' .. 255 .. ')\"><td>' .. GetPlayerServerId(i) .. '</td><td>' .. sanitize(GetPlayerName(i)) .. '</td><td>' .. '</td></tr>'
                    )
                end
                
                SendNUIMessage({ text = table.concat(players) })

                listOn = true
                while listOn do
                    Wait(0)
                    if(IsControlPressed(0, 166) == false) then
                        listOn = false
                        SendNUIMessage({
                            meta = 'close'
                        })
                        break
                    end
                end
            end
        end
    end
end)

function sanitize(txt)
    local replacements = {
        ['&' ] = '&amp;', 
        ['<' ] = '&lt;', 
        ['>' ] = '&gt;', 
        ['\n'] = '<br/>'
    }
    return txt
        :gsub('[&<>\n]', replacements)
        :gsub(' +', function(s) return ' '..('&nbsp;'):rep(#s-1) end)
end
