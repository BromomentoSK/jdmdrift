-- CONFIG --

-- Blacklisted ped models
pedblacklist = {
	"a_m_m_acult_01",
"a_f_m_fatcult_01",
"csb_stripper_01",
"csb_stripper_02",
"s_f_y_stripperlite",
"s_f_y_stripper_01",
"s_f_y_stripper_02",
"u_m_y_justin",
"mp_f_misty_01",
"mp_f_stripperlite",
"A_F_Y_Topless_01",
"A_F_Y_Topless_01_p",
}

-- Defaults to this ped model if an error happened
defaultpedmodel = "a_m_y_skater_01"

-- CODE --

Citizen.CreateThread(function()
	while true do
		Wait(1000)

		playerPed = GetPlayerPed(-1)
		if whitelisted == nil and playerPed then
			playerModel = GetEntityModel(playerPed)

			if not prevPlayerModel then
				if isPedBlacklisted(prevPlayerModel) then
					SetPlayerModel(PlayerId(), GetHashKey(defaultpedmodel))
				else
					prevPlayerModel = playerModel
				end
			else
				if isPedBlacklisted(playerModel) then
					SetPlayerModel(PlayerId(), prevPlayerModel)
					sendForbiddenMessage("")
				end

				prevPlayerModel = playerModel
			end
		end
	end
end)

function isPedBlacklisted(model)
	for _, blacklistedPed in pairs(pedblacklist) do
		if model == GetHashKey(blacklistedPed) then
			return true
		end
	end

	return false
end