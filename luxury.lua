_G.KaitanMode = true
shared.Team = "Pirates"
getgenv().Configs = {
    FpsBoost = false,
    SkipFarm = true,
    HopIfCantKill = true,
    BlockAllHop = false,

    FastAttack = true,
    NewFastAttack = true,
    NoAttackAnimation = true,

    StartKaitun = true,
    -- World 1
    AutoPole = false, -- จะตีเเค่ถ้ามันเกิดไม่ได้ตีจนกว่าจะได้
    AutoSaber = true,

    AutoSecondSea = true,
    -- World 2
    AutoRengoku = false,
    AutoQuestFlower = true,
    AutoRaceV3 = true,
    AutoBartiloQuest = true,
    AutoCursedCaptain = true,
    AutoDarkbeard = false,
    AutoFactory = true,
    AutoThirdSea = true,
    SkipGetItemGuitar = true, -- จะไม่ หาของทำ soul guiter ในโลก 2 เบบ หาจนกว่าจะได้ will not find item until get all item for do soul guiter ( open recommend เเนะนำให้เปิด )
    AlliesFruit = {"Magma-Magma","Dough-Dough"}, -- จะไม่ใช้ผลพวกนี้ในการเปิดประตูไปโลก3
    -- World 3
    AutoHallowScythe = true,
    AutoBuddySword = false,
    AutoDoughKing = true,
    AutoSpikeyTrident = false,
    AutoTushita = true,
    AutoEliteHunter = true,
    AutoDarkDagger = false,
    AutoYama = true,
    AutoCanvander = false,
    AutoSoulGuitar = true, 
    AutoRainbowHaki = true,
    AutoCursedDualKatana = true,

    -- Fighting Style 

    AutoGodHuman = true,
    AutoSuperhuman = true,
    AutoDeathStep = true,
    AutoSharkmanKarate = true,
    AutoElectricClaw = true,
    AutoDargonTalon = true,

    AutoDFMastery = true,
    SettingsSkill = { -- ถ้าไม่ใส่จะใช้ mode auto
        -- ["Z"] = 0.1,
        -- ["X"] = 0.1,
        -- ["C"] = 0.1,
        -- ["V"] = 0.1, -- อันไหนไม่เอาลบออกไปเลย
    },
    AutoSwordMastery = true,
    SelectRaritySword = {"Mythical"}, -- Common , Uncommon,Rare,Legendary,Mythical

    SelectRedeemCodeLevel = 1,

    -- Raids

    SelectRateFruitRaid = 5000000, -- if fruit price less u rate then we use it to auto raids
    LimitFragmentsRaids = 100000,

    -- Devil Fruit

    SelectMainDF = {"Dough-Dough"}, -- ผลหลักที่จะกินเเทนผลรอง
    SelectSubDF = {"Dough-Dough",}, -- ผลรองจะกินไว้ก่อนเเล้วพอผลหลักมีก้จะเปลียนไปกินผิดหลัก
    AllowEatDFInventory = true,
    StartSniper = true,

    -- RAM

    RAMPort = 7963,
    RAMPassword = "",
    AutoDescription = false,

    -- Webhook

    StartWebhook = false,
    WebhookURL = "",
    WebhookSettings = "Send Every 10 min", -- "Send Every 10 min","Send On Level Max And Every 10 min"

    -- CPU

    LockFPS = 20,
    LockFPSNow = false,
    WhiteScreen = false
}

_G.Key = "MAXZT-JONWZ-7EVZK"
_G.Key = "LuxuryV2_7x55s9451h8yyfkniqo0"

_G.DiscordId = "599152046523940874"
loadstring(game:HttpGet("https://raw.githubusercontent.com/NightsTimeZ/RoyryX/main/mainpack.lua"))();
