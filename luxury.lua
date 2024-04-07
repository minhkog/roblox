_G.KaitanMode = true
shared.Team = "Pirates"
getgenv().Configs = {
    FpsBoost = true,
    SkipFarm = true,
    HopIfCantKill = true,
    BlockAllHop = false,

    FastAttack = true,
    NewFastAttack = true,
    NoAttackAnimation = true,
    
    StartKaitun = true,
    -- World 1
    AutoPole = true, -- จะตีเเค่ถ้ามันเกิดไม่ได้ตีจนกว่าจะได้
    AutoSaber = true,
    
    AutoSecondSea = true,
    -- World 2
    AutoRengoku = false,
    AutoQuestFlower = false,
    AutoRaceV3 = false,
    AutoBartiloQuest = true,
    AutoCursedCaptain = false,
    AutoDarkbeard = true,
    AutoFactory = true,
    AutoThirdSea = true,
    SkipGetItemGuitar = false, -- จะไม่ หาของทำ soul guiter ในโลก 2 เบบ หาจนกว่าจะได้ will not find item until get all item for do soul guiter ( open recommend เเนะนำให้เปิด )
    AlliesFruit = {"Dragon-Dragon","Spirit-Spirit","Venom-Venom","Dough-Dough"}, -- จะไม่ใช้ผลพวกนี้ในการเปิดประตูไปโลก3
    -- World 3
    AutoHallowScythe = false,
    AutoBuddySword = false,
    AutoDoughKing = true,
    AutoSpikeyTrident = false,
    AutoTushita = true,
    AutoEliteHunter = true,
    AutoDarkDagger = false,
    AutoYama = true,
    AutoCanvander = false,
    AutoSoulGuitar = true, 
    AutoRainbowHaki = false,
    AutoCursedDualKatana = true,
    
    -- Fighting Style 
    
    AutoGodHuman = true,
    AutoSuperhuman = true,
    AutoDeathStep = true,
    AutoSharkmanKarate = true,
    AutoElectricClaw = true,
    AutoDargonTalon = true,
    
    AutoDFMastery = false,
    SettingsSkill = { -- ถ้าไม่ใส่จะใช้ mode auto
        -- ["Z"] = 0.1,
        -- ["X"] = 0.1,
        -- ["C"] = 0.1,
        -- ["V"] = 0.1, -- อันไหนไม่เอาลบออกไปเลย
    },
    AutoSwordMastery = false,
    SelectRaritySword = {"Mythical","Legendary"}, -- Common , Uncommon,Rare,Legendary,Mythical
    
    SelectRedeemCodeLevel = 1,
    
    -- Raids
    
    SelectRateFruitRaid = 1000000, -- if fruit price less u rate then we use it to auto raids
    LimitFragmentsRaids = 100000,
    
    -- Devil Fruit
        
    SelectMainDF = {"Dragon-Dragon","Spirit-Spirit","Venom-Venom","Dough-Dough"}, -- ผลหลักที่จะกินเเทนผลรอง
    SelectSubDF = {"Ice-Ice","Sand-Sand","Dark-Dark","Quake-Quake","Light-Light"}, -- ผลรองจะกินไว้ก่อนเเล้วพอผลหลักมีก้จะเปลียนไปกินผิดหลัก
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
    
    LockFPS = 30,
    LockFPSNow = true,
    WhiteScreen = true
}

_G.Key = "main_IMJKjWYp3EzSeua7jNrS"

_G.DiscordId = "599152046523940874"
loadstring(game:HttpGet("https://raw.githubusercontent.com/NightsTimeZ/RoyryX/main/Loader.lua"))();
