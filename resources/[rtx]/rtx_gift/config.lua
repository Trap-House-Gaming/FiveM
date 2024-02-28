Config = {}

Config.Framework = "esx"  -- types (qbcore, esx)

Config.ESXFramework = {
	newversion = false, -- use this if you using new esx version (if you get error with old esxsharedobjectmethod in console)
	getsharedobject = "esx:getSharedObject"
}

Config.Language = "English" -- text language from code, if you want translate interface, you need do it manually in html folder.

Config.GiftNotify = true -- this will enable our gift notify

Config.GiftSendBetweenPlayers = true -- enable this if you want enable players to send gift to other players

Config.GiftSendBetweenPlayersViaCommand = true -- enable this if you want allow players to open gift send menu via command

Config.GiftSendBetweenPlayersCommand = "giftsend" -- command name 

Config.GiftSendBetweenPlayersViaEvent = true -- enable this if you want open gift send menu via event 

Config.GiftSendBetweenPlayersEvent = "rtx_gift:OpenGiftSendMenu" -- event name for open gift send menu 

Config.GiftInventoryViaCommand = true -- enable this if you want allow players to open gift inventory menu via command

Config.GiftInventoryCommand = "gifts" -- command name 

Config.GiftInventoryViaEvent = true -- enable this if you want open gift inventory menu via event 

Config.GiftInventoryEvent = "rtx_gift:OpenGiftInventoryMenu" -- event name for open gift inventory menu 

Config.NearbyGiftDistance = 10.0

function Notify(text)
	exports["rtx_notify"]:Notify("Neons", text, 5000, "info") -- if you get error in this line its because you dont use our notify system buy it here https://rtx.tebex.io/package/5402098 or you can use some other notify system just replace this notify line with your notify system
	--exports["mythic_notify"]:SendAlert("inform", text, 5000)
end