getgenv().Key = "k8a3e46fec9b9744a70a6565"
getgenv().EquipMacroTroop = true
getgenv().Config = {
	["SelectChapter"] = "Chapter 1",
	["AutoSell"] = false,
	["AutoReplay"] = true,
	["AutoReturnLobby"] = false,
	["WH_MatchComplete"] = true,
	["AutoSkip"] = true,
	["SelectWorld"] = "Windmill Village",
	["TPLobbyIfPlayer"] = true,
	["SelectChallengeWorld"] = {
		["Mob City"] = false,
		["Cursed Academy"] = false,
		["Windmill Village"] = false
	},
	["SelectChallengeMacro"] = {

	},
	["IgnoreMacroTiming"] = true,
	["SelectMacro"] = "macro",
	["AutoJoinChallenge"] = false,
	["WebhookURL"] = "",
	["AutoSave"] = false,
	["LeaveSellWave"] = 1,
	["BlackScreen"] = false,
	["AutoRejoin"] = false,
	["SelectReward"] = {
		["Trait Crystal"] = false,
		["Gold"] = false,
		["Star Rift "] = false,
		["Star Rift (Rainbow)"] = false,
		["Risky Dice"] = false,
		["Gems"] = false
	},
	["PlayMacro"] = true,
	["AutoJoinWorld"] = false,
	["AutoLeave"] = false,
	["BoostFPS"] = true,
	["HardMode"] = false,
	["SelectDifficulty"] = {
		["All units lowered range"] = false,
		["All enemies regen health"] = false,
		["All units increased cost"] = false,
		["All enemies +1 shield"] = false,
		["All enemies 2x health"] = false,
		["All enemies 2x speed"] = false
	}
}
loadstring(game:HttpGet("https://nousigi.com/loader.lua"))()
