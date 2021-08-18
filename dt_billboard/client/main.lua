AddEventHandler("onResourceStart",function(xPlayer)
		Wait(60000)
        -- Downtown
        -- Texture Dictionary : dt1_22_bld2x.ytd
        -- Texture Dictionary : dt1_22_bld2x+hi.ytd
        -- Texture Name : dt1_22_cmk_tp02
        Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_cmk_tp02_1024.png", 1024, 1024)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
                AddReplaceTexture("dt1_22_bld2x+hi", "dt1_22_cmk_tp02", "duiTxd", "duiTex")
                AddReplaceTexture("dt1_22_bld1x+hi", "nxg_dt1_22_cmk_tp02", "duiTxd", "duiTex")
                AddReplaceTexture("dt1_22_bld1x", "nxg_dt1_22_cmk_tp02", "duiTxd", "duiTex")
                AddReplaceTexture("dt1_22_bldg2_detail2b+hidr", "nxg_dt1_22_cmk_tp02", "duiTxd", "duiTex")
            end)

        Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_cmk_tp02_512.png", 512, 512)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
                AddReplaceTexture("dt1_22_bld2x", "dt1_22_cmk_tp02", "duiTxd", "duiTex")
            end)

        Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_walls_lod_0001.png", 256, 1024)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
                AddReplaceTexture("dt1_22_lod", "dt1_22_walls_lod_0001", "duiTxd", "duiTex")
            end)

        Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_bposter_lod.png", 256, 512)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
                AddReplaceTexture("dt1_22_lod", "dt1_22_bposter_lod", "duiTxd", "duiTex")
            end)

        Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_superlod.png", 1024, 1024)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
                AddReplaceTexture("dt1_lod_emissive_7_20_children", "dt1_22_superlod", "duiTxd", "duiTex")
                AddReplaceTexture("dt1_lod_12_13_22_23_children", "dt1_22_superlod", "duiTxd", "duiTex")
        end)
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
		if proximity < 650.0 and not Run then
			 Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_cmk_tp02_1024.png", 1024, 1024)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
                AddReplaceTexture("dt1_22_bld2x+hi", "dt1_22_cmk_tp02", "duiTxd", "duiTex")
                AddReplaceTexture("dt1_22_bld1x+hi", "nxg_dt1_22_cmk_tp02", "duiTxd", "duiTex")
                AddReplaceTexture("dt1_22_bld1x", "nxg_dt1_22_cmk_tp02", "duiTxd", "duiTex")
                AddReplaceTexture("dt1_22_bldg2_detail2b+hidr", "nxg_dt1_22_cmk_tp02", "duiTxd", "duiTex")
            end)

        Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_cmk_tp02_512.png", 512, 512)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
                AddReplaceTexture("dt1_22_bld2x", "dt1_22_cmk_tp02", "duiTxd", "duiTex")
            end)

        Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_walls_lod_0001.png", 256, 1024)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
                AddReplaceTexture("dt1_22_lod", "dt1_22_walls_lod_0001", "duiTxd", "duiTex")
            end)

        Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_bposter_lod.png", 256, 512)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
                AddReplaceTexture("dt1_22_lod", "dt1_22_bposter_lod", "duiTxd", "duiTex")
            end)

        Citizen.CreateThread(function()
                local txd = CreateRuntimeTxd("duiTxd")
                local duiObj = CreateDui("http://WEBSERVER/dt1_22_superlod.png", 1024, 1024)
                _G.duiObj = duiObj
                local dui = GetDuiHandle(duiObj)
                local tx = CreateRuntimeTextureFromDuiHandle(txd, "duiTex", dui)
                AddReplaceTexture("dt1_lod_emissive_7_20_children", "dt1_22_superlod", "duiTxd", "duiTex")
                AddReplaceTexture("dt1_lod_12_13_22_23_children", "dt1_22_superlod", "duiTxd", "duiTex")
        end)
			Citizen.CreateThread(function()
				while true do
					Wait(0)
					if proximity > 650.0 then
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
