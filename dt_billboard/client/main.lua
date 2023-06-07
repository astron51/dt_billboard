local txd = nil
local textList = {
	["http://WEBSERVER/img/dt1_22_cmk_tp02_1024.png"] = {
		TextureName = "duiTxd1",
		Width = 1024,
		Height = 1024,
		Data = {
			{"dt1_22_bld2x+hi", "dt1_22_cmk_tp02"},
			{"dt1_22_bld1x+hi", "nxg_dt1_22_cmk_tp02"},
			{"dt1_22_bld1x", "nxg_dt1_22_cmk_tp02"},
			{"dt1_22_bldg2_detail2b+hidr", "nxg_dt1_22_cmk_tp02"}
		},
		txn = "duiTxn1"
	},
	["http://WEBSERVER/img/dt1_22_cmk_tp02_512.png"] = {
		TextureName = "duiTxd2",
		Width = 512,
		Height = 512,
		Data = {
			{"dt1_22_bld2x", "dt1_22_cmk_tp02"}
		},
		txn = "duiTxn2"
	},
	["http://WEBSERVER/img/dt1_22_walls_lod_0001.png"] = {
		TextureName = "duiTxd3",
		Width = 256,
		Height = 1024,
		Data = {
			{"dt1_22_lod", "dt1_22_walls_lod_0001"}
		},
		txn = "duiTxn3"
	},
	["http://WEBSERVER/img/dt1_22_bposter_lod.png"] = {
		TextureName = "duiTxd4",
		Width = 256,
		Height = 512,
		Data = {
			{"dt1_22_lod", "dt1_22_bposter_lod"}
		},
		txn = "duiTxn4"
	},
	["http://WEBSERVER/img/dt1_22_superlod.png"] = {
		TextureName = "duiTxd5",
		Width = 1024,
		Height = 1024,
		Data = {
			{"dt1_lod_emissive_7_20_children", "dt1_22_superlod"},
			{"dt1_lod_12_13_22_23_children", "dt1_22_superlod"}
		},
		txn = "duiTxn5"
	},
}

RegisterNetEvent('onResourceStart')
AddEventHandler('onResourceStart',function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
		return
	end
	for urlKey, thisEntry in pairs(textList) do
		txd = CreateRuntimeTxd(thisEntry.txn)
		local duiObj = CreateDui(urlKey, thisEntry.Width, thisEntry.Height)
		local dui = GetDuiHandle(duiObj)
		CreateRuntimeTextureFromDuiHandle(txd, thisEntry.TextureName, dui)
		for _, innerTable in ipairs(thisEntry.Data) do
			AddReplaceTexture(innerTable[1], innerTable[2], thisEntry.txn, thisEntry.TextureName)
		end
	end
end)
