Config = {}
Config.Debug = false -- Set to true to enable debug mode

--[[ FRAMEWORK OPTIONS ]] --
Config.Framework = "qb"
--[[
    Supported frameworks:
        * esx: es_extended, https://github.com/esx-framework/esx-legacy
        * qb: qb-core, https://github.com/qbcore-framework/qb-core
        * ox: ox_core, https://github.com/overextended/ox_core
        * standalone: no framework, note that framework specific apps will not work unless you implement the functions
]]
Config.CustomFramework = false -- if set to true and you use standalone, you will be able to use framework specific apps
Config.QBMailEvent = false -- if you want this script to listen for qb email events, enable this. NOTE: This allows players to send emails from the client.

Config.Item = {}
Config.Item.Require = true -- require a phone item to use the phone
Config.Item.Name = "phone" -- name of the phone item

Config.Item.Unique = false -- should each phone be unique? https://docs.lbphone.com/phone/configuration#unique-phones
Config.Item.Inventory = "ox_inventory" --[[
    The inventory you use, IGNORE IF YOU HAVE Config.Item.Unique DISABLED.
    Supported:
        * ox_inventory - https://github.com/overextended/ox_inventory
        * qb-inventory - https://github.com/qbcore-framework/qb-inventory
        * lj-inventory - https://github.com/loljoshie/lj-inventory
        * core_inventory - https://www.c8re.store/package/5121548
        * mf-inventory - https://modit.store/products/mf-inventory?variant=39985142268087
        * qs-inventory - https://buy.quasar-store.com/package/4770732
]]

Config.DynamicIsland = true -- if enabled, the phone will have a Iphone 14 Pro inspired Dynamic Island.
Config.SetupScreen = true -- if enabled, the phone will have a setup screen when the player first uses the phone.

Config.WhitelistApps = {
    -- ["test-app"] = {"police", "ambulance"}
}

Config.BlacklistApps = {
    -- ["DarkChat"] = {"police"}
}

Config.Companies = {}
Config.Companies.Enabled = true -- allow players to call companies?
Config.Companies.MessageOffline = true -- if true, players can message companies even if no one in the company is online
Config.Companies.Services = {
    {
        job = "police",
        name = "Police",
        icon = "https://cdn-icons-png.flaticon.com/512/7211/7211100.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss", "lieutenant"}, -- ranks that can manage the company
        location = {
            name = "MRPD",
            coords = {
                x = 428.9,
                y = -984.5,
            }
        },
        -- customIcon = "IoShield", -- if you want to use a custom icon for the company, set it here: https://react-icons.github.io/react-icons/icons?name=io5
        -- onCustomIconClick = function() 
        --     print("Clicked")
        -- end
    },
    {
        job = "vpd",
        name = "Police",
        icon = "https://cdn-icons-png.flaticon.com/512/7211/7211100.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss", "lieutenant"}, -- ranks that can manage the company
        location = {
            name = "Vinewood PD",
            coords = {
                x = 581.65,
                y = -6.74,
            }
        },
        -- customIcon = "IoShield", -- if you want to use a custom icon for the company, set it here: https://react-icons.github.io/react-icons/icons?name=io5
        -- onCustomIconClick = function() 
        --     print("Clicked")
        -- end
    },
    {
        job = "state",
        name = "SASP",
        icon = "https://cdn-icons-png.flaticon.com/512/7211/7211100.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss", "lieutenant"}, -- ranks that can manage the company
        location = {
            name = "State PD",
            coords = {
                x = 581.65,
                y = -6.74,
            }
        },
        -- customIcon = "IoShield", -- if you want to use a custom icon for the company, set it here: https://react-icons.github.io/react-icons/icons?name=io5
        -- onCustomIconClick = function() 
        --     print("Clicked")
        -- end
    },
    {
        job = "doj",
        name = "Department Of Justice",
        icon = "https://upload.wikimedia.org/wikipedia/commons/b/b9/Department_of_Justice_%28Philippines%29.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss"}, -- ranks that can manage the company
        location = {
            name = "Department Of Justice",
            coords = {
                x = 581.65,
                y = -6.74,
            }
        },
        -- customIcon = "IoShield", -- if you want to use a custom icon for the company, set it here: https://react-icons.github.io/react-icons/icons?name=io5
        -- onCustomIconClick = function() 
        --     print("Clicked")
        -- end
    },
    {
        job = "ambulance",
        name = "Ambulance",
        icon = "https://cdn-icons-png.flaticon.com/128/1032/1032989.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss", "doctor"}, -- ranks that can manage the company
        location = {
            name = "Pillbox",
            coords = {
                x = 304.2, 
                y = -587.0
            }
        }
    },
    {
        job = "mechanic1",
        name = "Rich Garage",
        icon = "https://cdn-icons-png.flaticon.com/128/10281/10281554.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss", "worker"}, -- ranks that can manage the company
        location = {
            name = "Rich Garage",
            coords = {
                x = -336.6, 
                y = -134.3
            }
        }
    },
    {
        job = "mechanic2",
        name = "Lons Mekanik",
        icon = "https://cdn-icons-png.flaticon.com/128/10281/10281554.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss", "worker"}, -- ranks that can manage the company
        location = {
            name = "Lons Mekanik",
            coords = {
                x = -336.6, 
                y = -134.3
            }
        }
    },
    --{
    --    job = "redline",
    --    name = "Redline Mekanik",
    --    icon = "https://cdn-icons-png.flaticon.com/128/10281/10281554.png",
    --    canCall = true, -- if true, players can call the company
    --    canMessage = true, -- if true, players can message the company
    --    bossRanks = {"boss", "worker"}, -- ranks that can manage the company
    --    location = {
    --        name = "Redline Mekanik",
    --        coords = {
    --            x = -577.78,
    --            y = -927.48
    --        }
    --    }
    --},
    {
        job = "japanese",
        name = "NoMercy Mekanik",
        icon = "https://cdn-icons-png.flaticon.com/128/10281/10281554.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss", "worker"}, -- ranks that can manage the company
        location = {
            name = "NoMercy Mekanik",
            coords = {
                x = -336.6, 
                y = -134.3
            }
        }
    },
   {
       job = "mechanic4",
       name = "Zetas Mekanik",
       icon = "https://cdn-icons-png.flaticon.com/128/10281/10281554.png",
       canCall = true, -- if true, players can call the company
       canMessage = true, -- if true, players can message the company
       bossRanks = {"boss", "worker"}, -- ranks that can manage the company
       location = {
           name = "Zetas Mekanik",
           coords = {
               x = -213.99, 
               y = -1329.78
           }
       }
   },
    {
        job = "mechanic9",
        name = "Unitas Mekanik",
        icon = "https://cdn-icons-png.flaticon.com/128/10281/10281554.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss"}, -- ranks that can manage the company
        location = {
            name = "Unitas Mekanik",
            coords = {
                x = -2976.79,
                y = 33.58
            }
        }
    },
    {
        job = "mechanic12",
        name = "Fk Mekanik",
        icon = "https://cdn-icons-png.flaticon.com/128/10281/10281554.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss"}, -- ranks that can manage the company
        location = {
            name = "FK Mekanik",
            coords = {
                x = -1417.28,
                y =  -446.57
            }
        }
    },
    {
        job = "beanmachine",
        name = "Bean Machine",
        icon = "https://static.wikia.nocookie.net/gtawiki/images/f/fc/TheBeanMachine-GTA4-logo.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss"}, -- ranks that can manage the company
        location = {
            name = "Bean Machine",
            coords = {
                x = 122.7, 
                y = -1037.66
            }
        }
    },
    {
        job = "serendipity",
        name = "Serendipity Cafe",
        icon = "https://cdn.discordapp.com/attachments/952883711525924904/1175126977552855060/ger.gif",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss"}, -- ranks that can manage the company
        location = {
            name = "Serendipity Cafe",
            coords = {
                x = -2979.93,
                y = 30.35
            }
        }
    },
    
    {
        job = "mechanic14",
        name = "Sinner's Custom",
        icon = "https://cdn-icons-png.flaticon.com/128/10281/10281554.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss"}, -- ranks that can manage the company
        location = {
            name = "Sinners Custom",
            coords = {
                x = 1143.01,
                y = -776.34
            }
        }
    },
    {
        job = "ldv",
        name = "La Dolce Vita",
        icon = "https://www.freepnglogos.com/uploads/coffee-logo-png/coffee-logo-design-creative-idea-logo-elements-2.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss"}, -- ranks that can manage the company
        location = {
            name = "La Dolce Vita",
            coords = {
                x = -2976.79,
                y = 33.58
            }
        }
    },
    {
        job = "custom",
        name = "Felss Cafe",
        icon = "https://www.freepnglogos.com/uploads/coffee-logo-png/coffee-logo-design-creative-idea-logo-elements-2.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss"}, -- ranks that can manage the company
        location = {
            name = "Felss Cafe",
            coords = {
                x = 301.14,
                y = -916.49
            }
        }
    },
    {
        job = "luxery",
        name = "Rich Cafe",
        icon = "https://www.pngmart.com/files/1/Coffee-Logo-PNG-Image.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss"}, -- ranks that can manage the company
        location = {
            name = "Rich Cafe",
            coords = {
                x = -2976.79,
                y = 33.58
            }
        }
    },
    {
        job = "burgershot",
        name = "Burger Shot",
        icon = "https://www.gran-turismo.com/gtsport/decal/4827929244984182280_1.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss"}, -- ranks that can manage the company
        location = {
            name = "Burger Shot",
            coords = {
                x = -1189.72, 
                y = -888.16
            }
        }
    },
    {
        job = "uwu",
        name = "UwU Cafe",
        icon = "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Stylized_uwu_emoticon.svg/1024px-Stylized_uwu_emoticon.svg.png",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss"}, -- ranks that can manage the company
        location = {
            name = "UwU Cafe",
            coords = {
                x = -582.49, 
                y = -1062.94
            }
        }
    },
    {
        job = "tequila",
        name = "Tequila",
        icon = "https://cdn.dribbble.com/users/3659003/screenshots/10678075/tequila-logo-2_4x.jpg",
        canCall = true, -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        bossRanks = {"boss"}, -- ranks that can manage the company
        location = {
            name = "Tequila",
            coords = {
                x = -562.29, 
                y = 285.64
            }
        }
    },
}

Config.Companies.Contacts = { -- not needed if you use the services app, this will add the contact to the contacts app
    -- ["police"] = {
    --     name = "Police",
    --     photo = "https://cdn-icons-png.flaticon.com/512/7211/7211100.png"
    -- },
}

Config.Companies.Management = {
    Enabled = true, -- if true, employees & the boss can manage the company

    Duty = true, -- if true, employees can go on/off duty
    -- Boss actions
    Deposit = true, -- if true, the boss can deposit money into the company
    Withdraw = true, -- if true, the boss can withdraw money from the company
    Hire = true, -- if true, the boss can hire employees
    Fire = true, -- if true, the boss can fire employees
    Promote = true, -- if true, the boss can promote employees
}

Config.CustomApps = { -- https://docs.lbphone.com/phone/custom-apps

}

Config.Valet = {}
Config.Valet.Enabled = true -- allow players to get their vehicles from the phone
Config.Valet.Price = 150 -- price to get your vehicle

Config.HouseScript = "loaf_housing" --[[
    The housing script you use on your server
    Supported:
        * loaf_housing - https://store.loaf-scripts.com/package/4310850
        * qb-houses - https://github.com/qbcore-framework/qb-houses
]]

--[[ VOICE OPTIONS ]] --
Config.Voice = {}
Config.Voice.CallEffects = false -- enable call effects while on speaker mode? (NOTE: This may create sound-issues if you have too many submixes registered in your server)
Config.Voice.System = "pma"
--[[
    Supported voice systems:
        * pma: pma-voice - HIGHLY RECOMMENDED
        * mumble: mumble-voip - Not recommended, update to pma-voice
        * salty: saltychat - Not recommended, change to pma-voice
        * toko: tokovoip - Not recommended, change to pma-voice
]]

Config.Voice.HearNearby = true --[[
    Only works with pma-voice
    
    If true, players will be heard on instagram live if they are nearby
    If false, only the person who is live will be heard

    If true, allow nearby players to listen to phone calls if speaker is enabled
    If false, only the people in the call will be able to hear each other

    This feature is a work in progress and may not work as intended. It may have an impact on performance.
]]


Config.Voice.RecordNearby = true --[[
    Should video recordings include nearby players?
]]

--[[ PHONE OPTIONS ]] --
Config.Locations = { -- Locations that'll appear in the maps app.
    {
        position = vector2(428.9, -984.5),
        name = "LSPD",
        description = "Los Santos Police Department",
        icon = "https://cdn-icons-png.flaticon.com/512/7211/7211100.png",
    },
    {
        position = vector2(304.2, -587.0),
        name = "Pillbox",
        description = "Pillbox Medical Hospital",
        icon = "https://cdn-icons-png.flaticon.com/128/1032/1032989.png",
    },
}

Config.Locales = { -- languages that the player can choose from when setting up a phone [Check the docs to see which languages the phone supports]
    {
        locale = "en",
        name = "English"
    },
    {
        locale = "de",
        name = "Deutsch"
    },
    {
        locale = "fr",
        name = "Français"
    },
    {
        locale = "es",
        name = "Español"
    },
    {
        locale = "nl",
        name = "Nederlands"
    },
    {
        locale = "dk",
        name = "Dansk"
    },
    {
        locale = "no",
        name = "Norsk"
    },
    {
        locale = "th",
        name = "ไทย"
    },
    {
        locale = "ar",
        name = "عربي"
    },
    {
        locale = "ru",
        name = "Русский"
    },
    {
        locale = "cs",
        name = "Czech"
    },
    {
        locale = "sv",
        name = "Svenska"
    },
    {
        locale = "pl",
        name = "Polski"
    },
    {
        locale = "hu",
        name = "Magyar"
    },
    {
        locale = "tr",
        name = "Türkçe"
    },
    {
        locale = "pt-br",
        name = "Português (Brasil)"
    },
    {
        locale = "it",
        name = "Italiano"
    }
}

Config.DefaultLocale = "tr"
Config.DateLocale = "tr-TR" -- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat/DateTimeFormat

Config.FrameColor = "#39334d" -- This is the color of the phone frame. Default (#39334d) is SILVER.
Config.AllowFrameColorChange = true -- Allow players to change the color of their phone frame?

Config.PhoneNumber = {}
Config.PhoneNumber.Format = "({3}) {3}-{4}" -- Don't touch unless you know what you're doing. IMPORTANT: The sum of the numbers needs to be equal to the phone number length + prefix length
Config.PhoneNumber.Length = 7 -- This is the length of the phone number WITHOUT the prefix.
Config.PhoneNumber.Prefixes = { -- These are the first numbers of the phone number, usually the area code. They all need to be the same length
    "205",
    "907",
    "480",
    "520",
    "602"
}

Config.Battery = {} -- WITH THESE SETTINGS, A FULL CHARGE WILL LAST AROUND 2 HOURS.
Config.Battery.Enabled = false -- Enable battery on the phone, you'll need to use the exports to charge it.
Config.Battery.ChargeInterval = { 5, 10 } -- How much battery
Config.Battery.DischargeInterval = { 50, 60 } -- How many seconds for each percent to be removed from the battery
Config.Battery.DischargeWhenInactiveInterval = { 80, 120 } -- How many seconds for each percent to be removed from the battery when the phone is inactive
Config.Battery.DischargeWhenInactive = true -- Should the phone remove battery when the phone is closed?

Config.CurrencyFormat = "$%s" -- ($100) Choose the formatting of the currency. %s will be replaced with the amount.
Config.MaxTransferAmount = 1000000 -- The maximum amount of money that can be transferred at once via wallet / messages.

Config.EnableMessagePay = true -- Allow players to pay other players via messages?
Config.EnableVoiceMessages = true -- Allow players to send voice messages?

Config.CityName = "Los Santos" -- The name that's being used in the weather app etc.
Config.RealTime = true -- if true, the time will use real life time depending on where the user lives, if false, the time will be the ingame time.
Config.CustomTime = false -- NOTE: disable Config.RealTime if using this. you can set this to a function that returns custom time, as a table: { hour = 0-24, minute = 0-60 }

Config.EmailDomain = "coastv.com"

Config.DeleteMessages = true -- allow players to delete messages in the messages app?

Config.SyncFlash = true -- should flashlights be synced across all players? May have an impact on performance
Config.EndLiveClose = false -- should IG live end when you close the phone?

Config.AllowExternal = { -- allow people to upload external images? (note: this means they can upload nsfw / gore etc)
    Twitter = true, -- set to true to enable external images on that specific app, set to false to disable it.
    Instagram = true,
    Tinder = true,
    TikTok = true,
    YellowPages = true,
    MarketPlace = true,
    Mail = true,
    Messages = true,
    Other = true, -- other apps that don't have a specific setting (ex: setting a profile picture for a contact, backgrounds for the phone etc)
}

Config.AutoBackup = true -- should the phone automatically create a backup when you get a new phone?

Config.PhoneModel = `lb_phone_prop` -- the prop of the phone, if you want to use a custom phone model, you can change this here
Config.PhoneRotation = vector3(0.0, 0.0, 180.0) -- the rotation of the phone when attached to a player
Config.PhoneOffset = vector3(0.0, -0.005, 0.0) -- the offset of the phone when attached to a player

Config.Post = {} -- What apps should send posts to discord? You can set your webhooks in server/webhooks.lua
Config.Post.Twitter = true -- New tweets
Config.Post.Instagram = true -- New posts
Config.Post.Accounts = {
    Birdy = {
        Username = "Birdy",
        Avatar = "https://cdn.discordapp.com/attachments/1032954560844660756/1112361465438031882/Birdy.png"
    },
    InstaPic = {
        Username = "InstaPic",
        Avatar = "https://cdn.discordapp.com/attachments/1032954560844660756/1112361465219911730/InstaPic.png"
    }
}

Config.TwitterTrending = {}
Config.TwitterTrending.Enabled = true -- show trending hashtags?
Config.TwitterTrending.Reset = 7 * 24 -- How often should trending hashtags be reset on twitter? (in hours)

Config.TwitterNotifications = false -- should everyone get a notification when someone tweets?

Config.PromoteTwitter = {}
Config.PromoteTwitter.Enabled = true -- should you be able to promote tweets?
Config.PromoteTwitter.Cost = 2500 -- how much does it cost to promote a tweet?
Config.PromoteTwitter.Views = 100 -- how many views does a promoted tweet get?

Config.TikTok = {}
Config.TikTok.TTS = {
    {"English (US) - Female", "en_us_001"},
    {"English (US) - Male 1", "en_us_006"},
    {"English (US) - Male 2", "en_us_007"},
    {"English (US) - Male 3", "en_us_009"},
    {"English (US) - Male 4", "en_us_010"},

    {"English (UK) - Male 1", "en_uk_001"},
    {"English (UK) - Male 2", "en_uk_003"},

    {"English (AU) - Female", "en_au_001"},
    {"English (AU) - Male", "en_au_002"},

    {"French - Male 1", "fr_001"},
    {"French - Male 2", "fr_002"},

    {"German - Female", "de_001"},
    {"German - Male", "de_002"},

    {"Spanish - Male", "es_002"},

    {"Spanish (MX) - Male", "es_mx_002"},

    {"Portuguese (BR) - Female 2", "br_003"},
    {"Portuguese (BR) - Female 3", "br_004"},
    {"Portuguese (BR) - Male", "br_005"},

    {"Indonesian - Female", "id_001"},

    {"Japanese - Female 1", "jp_001"},
    {"Japanese - Female 2", "jp_003"},
    {"Japanese - Female 3", "jp_005"},
    {"Japanese - Male", "jp_006"},

    {"Korean - Male 1", "kr_002"},
    {"Korean - Male 2", "kr_004"},
    {"Korean - Female", "kr_003"},

    {"Ghostface (Scream)", "en_us_ghostface"},
    {"Chewbacca (Star Wars)", "en_us_chewbacca"},
    {"C3PO (Star Wars)", "en_us_c3po"},
    {"Stitch (Lilo & Stitch)", "en_us_stitch"},
    {"Stormtrooper (Star Wars)", "en_us_stormtrooper"},
    {"Rocket (Guardians of the Galaxy)", "en_us_rocket"},

    {"Singing - Alto", "en_female_f08_salut_damour"},
    {"Singing - Tenor", "en_male_m03_lobby"},
    {"Singing - Sunshine Soon", "en_male_m03_sunshine_soon"},
    {"Singing - Warmy Breeze", "en_female_f08_warmy_breeze"},
    {"Singing - Glorious", "en_female_ht_f08_glorious"},
    {"Singing - It Goes Up", "en_male_sing_funny_it_goes_up"},
    {"Singing - Chipmunk", "en_male_m2_xhxs_m03_silly"},
    {"Singing - Dramatic", "en_female_ht_f08_wonderful_world"}
}

Config.ICEServers = false -- ICE Servers for WebRTC (ig live, facetim). If you don't know what you're doing, leave this as false.

Config.Crypto = {}
Config.Crypto.Coins = {"bitcoin","ethereum","tether","binancecoin","usd-coin","ripple","binance-usd","cardano","dogecoin","solana","shiba-inu","polkadot","litecoin","bitcoin-cash"}
Config.Crypto.Currency = "usd" -- currency to use for crypto prices. https://api.coingecko.com/api/v3/simple/supported_vs_currencies
Config.Crypto.Refresh = 5 * 60 * 1000 -- how often should the crypto prices be refreshed (client cache)? (Default 5 minutes)
Config.Crypto.QBit = true -- support QBit? (requires qb-crypto & qb-core)
 
Config.KeyBinds = {
    -- Find keybinds here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    Open = { -- toggle the phone
        Command = "phone",
        Bind = "F1",
        Description = "Open your phone"
    },
    Focus = { -- keybind to toggle the mouse cursor.
        Command = "togglePhoneFocus",
        Bind = "LMENU",
        Description = "Toggle cursor on your phone"
    },
    StopSounds = { -- in case the sound would bug out, you can use this command to stop all sounds.
        Command = "stopSounds",
        Bind = false,
        Description = "Stop all phone sounds"
    },

    FlipCamera = {
        Command = "flipCam",
        Bind = "UP",
        Description = "Flip phone camera"
    },
    TakePhoto = {
        Command = "takePhoto",
        Bind = "RETURN",
        Description = "Take a photo / video"
    },
    ToggleFlash = {
        Command = "toggleCameraFlash",
        Bind = "E",
        Description = "Toggle flash"
    },
    LeftMode = {
        Command = "leftMode",
        Bind = "LEFT",
        Description = "Change mode"
    },
    RightMode = {
        Command = "rightMode",
        Bind = "RIGHT",
        Description = "Change mode"
    },

    AnswerCall = {
        Command = "answerCall",
        Bind = "RETURN",
        Description = "Answer incoming call"
    },
    DeclineCall = {
        Command = "declineCall",
        Bind = "BACK",
        Description = "Decline incoming call"
    },
    UnlockPhone = {
        Bind = "SPACE",
        Description = "Open your phone",
    },
}

Config.KeepInput = true -- keep input when nui is focused (meaning you can walk around etc)

--[[ PHOTO / VIDEO OPTIONS ]] --
-- Set your api keys in lb-phone/server/apiKeys.lua **NOT HERE**
Config.UploadMethod = {}
-- You can edit the upload methods in lb-phone/shared/upload.lua
Config.UploadMethod.Video = "Discord" -- "Discord" or "Imgur" or "Custom"
Config.UploadMethod.Image = "Discord" -- "Discord" or "Imgur" or "Custom
Config.UploadMethod.Audio = "Discord" -- "Discord" or "Custom"

Config.Video = {}
Config.Video.Bitrate = 400 -- video bitrate (kbps)
Config.Video.FrameRate = 24 -- video framerate (fps)
Config.Video.MaxSize = 25 -- max video size (MB)
Config.Video.MaxDuration = 60 -- max video duration (seconds)
