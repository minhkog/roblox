_G.Nexus = {
    Main = {
        ['Enabled'] = true,
        ['Hop Cooldown'] = 30, -- 30 Seconds
        ['Quests'] = {
            ['Pull Lever'] = true,
            ['Rainbow Haki'] = true,
            ['Musketeer Hat'] = true,
            ['Mirror Fractal'] = true,
            ['Sanguine Material'] = false,
        },
    },
    Sockets = {
        Enabled = false,
        MachineName = 'Nexus',
        Sword = {
            'Cursed Dual Katana',
            'Dark Dagger',
            'True Triple Katana',
            'Tushita',
            'Yama',
            'Hallow Scythe',
            'Saber'
        },
        Fruit = {
            'Kitsune',
            'Leopard',
            'Dragon',
            'Spirit',
            'Control',
            'Venom',
            'Shadow',
            'Dough',
            'Mammoth',
            'T-Rex'
        }
    },
    Efficiency = {
        ['FPS Booster'] = true,
        ['Black Screen'] = false,
    },
    Fruits = {
        ['Enabled'] = false,
        ['Awakening Fruit'] = true,
        ['Main'] = {
            'Dough-Dough'
        },
        ['List'] = {
            'Dark-Dark',
            'Quake-Quake',
            'Rumble-Rumble',
            'Magma-Magma',
            'Buddha-Buddha',
        },
    },
    Melee = {
        ['6 Melee'] = true,
    },
    Sword = {
        ['Pole'] = true,
        ['Saber'] = true,
        ['Midnight Blade'] = true,
        ['Shisui'] = false,
        ['Saddi'] = false,
        ['Wando'] = false,
        ['Yama'] = true,
        ['Tushita'] = true,
        ['Rengoku'] = false,
        ['Canvander'] = false,
        ['Buddy Sword'] = false,
        ['Spikey Trident'] = true,
        ['Twin Hooks'] = false,
        ['Hallow Scryte'] = true,
        ['True Triple Katana'] = true,
        ['Cursed Dual Katana'] = true,
        ['Shark Anchor'] = false,
    },
    Gun = {
        ['Kabucha'] = true,
        ['Serpent Bow'] = true,
        ['Soul Guitar'] = true
    },
    Race = {
        Enabled = false,
        Races = {
            ['Mink'] = true,
            ['Human'] = false,
            ['Fishman'] = true,
            ['Skypiea'] = true,
        },
        Specials = {
            ['Ghoul'] = true,
            ['Cyborg'] = true,
        },
        V4 = {
            ['Enabled'] = false,
        },
    },
    Mastery = {
        Sword = {
            ['Enabled'] = true,
            ['Manual'] = true,
            ['Sword Name'] = {
                'Koko',
                'Midnight Blade',
                'True Triple Katana',
                'Cursed Dual Katana',
                'Shark Anchor',
            }
        },
        Gun = {
            ['Enabled'] = false,
            ['Manual'] = true,
            ['Gun Name'] = {
                'Kabucha',
                'Acidum Rifle',
                'Serpent Bow',
                'Soul Guitar',
            }
        },
        DevilFruits = true
    }
}
script_key="tmOcMmUJITjJqUzrDzsAatlnWjojulDw";
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenon-Trash/Nexus/main/Nexus.lua"))()
