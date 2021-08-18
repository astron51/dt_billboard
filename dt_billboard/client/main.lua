local Loaded = false

RegisterNetEvent('esx:playerLoaded')
AddEventHandler("esx:playerLoaded",function(xPlayer)
		Wait(20000)
        -- Downtown
        -- Texture Dictionary : dt1_22_bld2x.ytd
        -- Texture Dictionary : dt1_22_bld2x+hi.ytd
        -- Texture Name : dt1_22_cmk_tp02
        Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd1")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_cmk_tp02_1024.png", 1024, 1024)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
		end)

        Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd2")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_cmk_tp02_512.png", 512, 512)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
        end)

        Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd3")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_walls_lod_0001.png", 256, 1024)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
                
            end)

        Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd4")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_bposter_lod.png", 256, 512)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
            end)

        Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd5")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_superlod.png", 1024, 1024)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
        end)
		Wait(10000)
		AddReplaceTexture("dt1_22_bld2x+hi", "dt1_22_cmk_tp02", "duiTxd1", "duiTex")
		AddReplaceTexture("dt1_22_bld1x+hi", "nxg_dt1_22_cmk_tp02", "duiTxd1", "duiTex")
		AddReplaceTexture("dt1_22_bld1x", "nxg_dt1_22_cmk_tp02", "duiTxd1", "duiTex")
		AddReplaceTexture("dt1_22_bldg2_detail2b+hidr", "nxg_dt1_22_cmk_tp02", "duiTxd1", "duiTex")
		AddReplaceTexture("dt1_22_bld2x", "dt1_22_cmk_tp02", "duiTxd2", "duiTex")
		AddReplaceTexture("dt1_22_lod", "dt1_22_walls_lod_0001", "duiTxd3", "duiTex")			
		AddReplaceTexture("dt1_22_lod", "dt1_22_bposter_lod", "duiTxd4", "duiTex")
		AddReplaceTexture("dt1_lod_emissive_7_20_children", "dt1_22_superlod", "duiTxd5", "duiTex")
		AddReplaceTexture("dt1_lod_12_13_22_23_children", "dt1_22_superlod", "duiTxd5", "duiTex")
		print('Texture Primed')
		Loaded = true
end)

local Coords
local TargetZone
local proximity = 0

Citizen.CreateThread(function()
	while true do
		Wait(0)
		Coords = GetEntityCoords(PlayerPedId())
		TargetZone = vector3(9.2177, -1027.1779, 46.3701)
        proximity = GetDistanceBetweenCoords(Coords.x, Coords.y, Coords.z, TargetZone.x, TargetZone.y, TargetZone.z, true)
	end
end)

local Run = false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)
		if not Loaded then return end
		if proximity < 86.0 and not Run then
			AddReplaceTexture("dt1_22_bld2x+hi", "dt1_22_cmk_tp02", "duiTxd1", "duiTex")
			AddReplaceTexture("dt1_22_bld1x+hi", "nxg_dt1_22_cmk_tp02", "duiTxd1", "duiTex")
			AddReplaceTexture("dt1_22_bld1x", "nxg_dt1_22_cmk_tp02", "duiTxd1", "duiTex")
			AddReplaceTexture("dt1_22_bldg2_detail2b+hidr", "nxg_dt1_22_cmk_tp02", "duiTxd1", "duiTex")
			AddReplaceTexture("dt1_22_bld2x", "dt1_22_cmk_tp02", "duiTxd2", "duiTex")
			AddReplaceTexture("dt1_22_lod", "dt1_22_walls_lod_0001", "duiTxd3", "duiTex")			
			AddReplaceTexture("dt1_22_lod", "dt1_22_bposter_lod", "duiTxd4", "duiTex")
			AddReplaceTexture("dt1_lod_emissive_7_20_children", "dt1_22_superlod", "duiTxd5", "duiTex")
			AddReplaceTexture("dt1_lod_12_13_22_23_children", "dt1_22_superlod", "duiTxd5", "duiTex")
			Citizen.CreateThread(function()
				while true do
					Wait(0)
					if proximity > 86.0 then
						Run = false
					else
						Run = true
					end
				end
			end)
			Citizen.CreateThread(function()
				while Run do
					Citizen.Wait(0)
				end
			end)
		end
	end
end)
