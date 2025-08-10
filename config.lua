Config = {}

---------------------------------
-- shop settings
---------------------------------
Config = {
    TrapperShopItems = {
        { name = 'weapon_melee_knife', amount = 10, price = 5 },
    },
    PersistStock = true, --should stock save in database and load it after restart, to 'remember' stock value before restart
}

---------------------------------
-- settings
---------------------------------
Config.Debug = false
Config.KeyBind = 'J'
Config.SellTime = 10000
Config.PaymentType = 'cash' -- cash / bank / bloodmoney
Config.EnableTarget = true

---------------------------------
-- webhook settings
---------------------------------
Config.WebhookName = 'rextrapper'
Config.WebhookTitle = 'Rex Trapper'
Config.WebhookColour = 'default'
Config.Lang1 = ' Sold items to the Trapper for a total of $'

---------------------------------
-- npc settings
---------------------------------
Config.DistanceSpawn = 20.0
Config.FadeIn = true

---------------------------------
-- blip settings
---------------------------------
Config.Blip = {
    blipName = 'Trapper', -- Config.Blip.blipName
    blipSprite = 'blip_shop_animal_trapper', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

---------------------------------
-- trapper locations
---------------------------------
Config.TrapperLocations = {

    {
        name = 'Valentine Trapper',
        prompt = 'valentine-trapper',
        coords = vector3(-334.2203, 773.16943, 116.24839),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(-333.9737, 773.49157, 116.22194, 111.8759),
        showblip = true
    },
    {
        name = 'St Denis Trapper',
        prompt = 'stdenis-trapper',
        coords = vector3(2832.5424, -1225.602, 47.661453),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(2832.3193, -1223.699, 47.654289, 190.36814),
        showblip = true
    },
    {
        name = 'Riggs Station Trapper',
        prompt = 'riggsstation-trapper',
        coords = vector3(-1006.938, -549.3896, 99.393592),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(-1007.607, -549.5084, 99.39138, 282.4226),
        showblip = true
    },
    {
        name = 'West Elizabeth Trapper',
        prompt = 'westelizabeth-trapper',
        coords = vector3(-2843.525, 142.12048, 184.59883),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(-2844.197, 142.13876, 184.61907, 255.25524),
        showblip = true
    },
    {
        name = 'Stawberry Trapper',
        prompt = 'stawberry-trapper',
        coords = vector3(-1746.634, -389.2384, 156.53625),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(-1745.992, -388.9831, 156.59568, 107.79673),
        showblip = true
    },
    {
        name = 'Tumbleweed Trapper',
        prompt = 'tumbleweed-trapper',
        coords = vector3(-5512.208, -2952.122, -1.791797),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(-5511.721, -2951.048, -1.83548, 165.87483),
        showblip = true
    },
    {
        name = 'Grifflies Trapper',
        prompt = 'grifflies-trapper',
        coords = vector3(1420.3685, 379.5938, 90.3204),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(1420.50, 381.29, 90.33, 167.85),
        showblip = true
    },
    {
        name = 'Roanake Trapper',
        prompt = 'roanake-trapper',
        coords = vector3(2539.4578, 809.7834, 75.9239),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(2541.54, 809.94, 75.98, 98.15),
        showblip = true
    },
    {
        name = 'Ambario Trapper',
        prompt = 'ambario-trapper',
        coords = vector3(-1633.170, 1235.340, 351.892),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(-1632.52, 1235.91, 351.87, 165.18),
        showblip = true
    },
    {
        name = 'Corngual Trapper',
        prompt = 'corngual-trapper',
        coords = vector3(497.839, 580.183, 110.1711),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(497.70, 579.54, 110.20, 359.00),
        showblip = true
    },
    {
        name = 'Heartlands Trapper',
        prompt = 'heartlands-trapper',
        coords = vector3(-128.092, -23.935, 96.100),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(-127.70, -24.34, 96.08, 104.95),
        showblip = true
    },
    {
        name = 'Manzanita Trapper',
        prompt = 'manzanita-trapper',
        coords = vector3(-1981.611, -1650.570, 117.099),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(-1981.30, -1650.31, 117.09, 130.13),
        showblip = true
    },
    {
        name = 'Kamassa River Trapper',
        prompt = 'kamassariver-trapper',
        coords = vector3(1878.461, -1854.444, 42.748),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(1878.37, -1854.60, 42.76, 25.18),
        showblip = true
    },
    {
        name = 'Rio Bravo Trapper',
        prompt = 'riobravo-trapper',
        coords = vector3(-4621.124, -3366.574, 21.975),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(-4621.31, -3366.02, 21.97, 226.17),
        showblip = true
    },
    {
        name = 'Spider Gorge Trapper',
        prompt = 'spidergorge-trapper',
        coords = vector3(-1340.77, 2437.74, 308.18),
        npcmodel = `u_m_m_sdtrapper_01`,
        npccoords = vector4(-1340.77, 2437.74, 308.18, 177.71),
        showblip = true
    },

}

-------------------------------------
-- pelt sell prices
-------------------------------------
Config.PoorPeltPrice = 1
Config.GoodPeltPrice = 2
Config.PerfectPeltPrice = 3
Config.LegendaryPeltPrice = 10
Config.SmallPeltPrice = 1
Config.ReptileSkinPrice = 1
Config.FeatherPrice = 1

Config.Pelts = {
    -------------------------------------
    -- North American Beaver
    -------------------------------------
    { 
        pelthash    = -1569450319,
        name        = 'Poor Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -2059726619,
        name        = 'Good Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 854596618,
        name        = 'Perfect Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Bear
    -------------------------------------
    {
        pelthash    = 957520252,
        name        = 'Poor Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 143941906,
        name        = 'Good Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1292673537,
        name        = 'Perfect Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- American Black Bear
    -------------------------------------
    {
        pelthash    = 1083865179,
        name        = 'Poor Black Bear Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1490032862,
        name        = 'Good Black Bear Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 663376218,
        name        = 'Perfect Black Bear Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Boar
    -------------------------------------
    {
        pelthash    = 1248540072,
        name        = 'Poor Boar Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 2116849039,
        name        = 'Good Boar Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1858513856,
        name        = 'Perfect Boar Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Buck
    -------------------------------------
    {
        pelthash    = 1603936352,
        name        = 'Poor Buck Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -702790226,
        name        = 'Good Buck Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -868657362, 
        name        = 'Perfect Buck Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Bison
    -------------------------------------
    {
        pelthash    = -1730060063,
        name        = 'Poor Buffalo Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -591117838,
        name        = 'Good Buffalo Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -237756948,
        name        = 'Perfect Buffalo Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Bull
    -------------------------------------
    {
        pelthash    = 9293261,
        name        = 'Poor Bull Hide',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -536086818,
        name        = 'Good Bull Hide',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -53270317,
        name        = 'Perfect Bull Hide',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Cougar
    -------------------------------------
    {
        pelthash    = 1914602340,
        name        = 'Poor Cougar Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 459744337,
        name        = 'Good Cougar Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1791452194,
        name        = 'Perfect Cougar Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Florida Cracker Cow
    -------------------------------------
    {
        pelthash    = 334093551,
        name        = 'Poor Cow Hide',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1150594075,
        name        = 'Good Cow Hide',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -845037222,
        name        = 'Perfect Cow Hide',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Coyote
    -------------------------------------
    {
        pelthash    = -1558096473,
        name        = 'Poor Coyote Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1150939141,
        name        = 'Good Coyote Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -794277189,
        name        = 'Perfect Coyote Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Deer
    -------------------------------------
    {
        pelthash    = -662178186,
        name        = 'Poor Deer Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1827027577,
        name        = 'Good Deer Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1035515486,
        name        = 'Perfect Deer Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Elk
    -------------------------------------
    {
        pelthash    = 2053771712,
        name        = 'Poor Elk Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1181652728,
        name        = 'Good Elk Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1332163079,
        name        = 'Perfect Elk Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Fox
    -------------------------------------
    {
        pelthash    = 1647012424,
        name        = 'Poor Fox Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 238733925,
        name        = 'Good Fox Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 500722008,
        name        = 'Perfect Fox Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Alpine Goat
    -------------------------------------
    {
        pelthash    = 699990316,
        name        = 'Poor Goat Hide',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1710714415,
        name        = 'Good Goat Hide',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1648383828,
        name        = 'Perfect Goat Hide',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Peccary Pig
    -------------------------------------
    {
        pelthash    = -99092070,
        name        = 'Poor Peccary Pig Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1379330323,
        name        = 'Good Peccary Pig Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1963510418,
        name        = 'Perfect Peccary Pig Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Moose
    -------------------------------------
    {
        pelthash    = 1868576868,
        name        = 'Poor Moose Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1636891382,
        name        = 'Good Moose Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -217731719,
        name        = 'Perfect Moose Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Angus Ox
    -------------------------------------
    {
        pelthash    = 462348928,
        name        = 'Poor Ox Hide',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1208128650,
        name        = 'Good Ox Hide',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 659601266,
        name        = 'Perfect Ox Hide',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Panther
    -------------------------------------
    {
        pelthash    = 1584468323,
        name        = 'Poor Panther Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -395646254,
        name        = 'Good Panther Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1969175294,
        name        = 'Perfect Panther Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Berkshire Pig
    -------------------------------------
    { 
        pelthash    = -308965548,
        name        = 'Poor Pig Hide',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -57190831,
        name        = 'Good Pig Hide',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1102272634,
        name        = 'Perfect Pig Hide',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- American Pronghorn Doe
    -------------------------------------
    {
        pelthash    = -983605026,
        name        = 'Poor Pronghorn Hide',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1544126829, 
        name        = 'Good Pronghorn Hide',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 554578289,
        name        = 'Perfect Pronghorn Hide',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Big Horn Ram
    -------------------------------------
    {
        pelthash    = 1796037447,
        name        = 'Poor Ram Hide',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -476045512,
        name        = 'Good Ram Hide',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1795984405,
        name        = 'Perfect Ram Hide',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Merino Sheep
    -------------------------------------
    {
        pelthash    = 1729948479,
        name        = 'Poor Sheep Hide',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1317365569,
        name        = 'Good Sheep Hide',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1466150167,
        name        = 'Perfect Sheep Hide',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Wolf
    -------------------------------------
    {
        pelthash    = 85441452,
        name        = 'Poor Wolf Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1145777975,
        name        = 'Good Wolf Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 653400939,
        name        = 'Perfect Wolf Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Alligator Small
    -------------------------------------
    {
        pelthash    = 1806153689,
        name        = 'Poor Alligator Skin',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -802026654,
        name        = 'Good Alligator Skin',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1625078531,
        name        = 'Perfect Alligator Skin',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Raccoon
    -------------------------------------
    {
        pelthash    = 1992476687,
        name        = 'Poor Raccoon Pelt',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1178296218,
        name        = 'Good Raccoon Pelt',
        rewarditem1 = 'good_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -305970307,
        name        = 'Perfect Raccoon Pelt',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    -------------------------------------
    -- Alligator
    -------------------------------------
    {
        pelthash    = -1243878166,
        name        = 'Alligator',
        rewarditem1 = 'poor_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1475338121,
        name        = 'Alligator',
        rewarditem1 = 'perfect_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    ----------------------------------------------
    -- Legendary Bear
    ----------------------------------------------
    {
        pelthash    = 1181154860,
        name        = 'Legendary Bear Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1418435161,
        name        = 'Legendary Bear Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1511236969,
        name        = 'Legendary Bear Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    ----------------------------------------------
    -- Legendary Moose
    ----------------------------------------------
    {
        pelthash    = 739090883,
        name        = 'Legendary Moose Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1043121665,
        name        = 'Legendary Moose Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -634716689,
        name        = 'Legendary Moose Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    ----------------------------------------------
    -- Legendary Ram
    ----------------------------------------------
    {
        pelthash    = -675142890,
        name        = 'Legendary Ram Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -906131571,
        name        = 'Legendary Ram Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -591844128,
        name        = 'Legendary Ram Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    ----------------------------------------------
    -- Legendary Elk
    ----------------------------------------------
    {
        pelthash    = -420237085,
        name        = 'Legendary Elk Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1195518864,
        name        = 'Legendary Elk Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -159428614,
        name        = 'Legendary Elk Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    ----------------------------------------------
    -- Legendary Alligator
    ----------------------------------------------
    {
        pelthash    = -1924159110,
        name        = 'Legendary Alligator Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1621144167,
        name        = 'Legendary Alligator Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1061253029,
        name        = 'Legendary Alligator Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    ----------------------------------------------
    -- Legendary Beaver
    ----------------------------------------------
    {
        pelthash    = 121494806,
        name        = 'Legendary Beaver Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -251416414,
        name        = 'Legendary Beaver Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1787430524,
        name        = 'Legendary Beaver Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    ----------------------------------------------
    -- Legendary Boar
    ----------------------------------------------
    {
        pelthash    = -1572330336,
        name        = 'Legendary Boar Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1249752300,
        name        = 'Legendary Boar Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -940052481,
        name        = 'Legendary Boar Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    ----------------------------------------------
    -- Legendary Cougar
    ----------------------------------------------
    {
        pelthash    = 832214437,
        name        = 'Legendary Cougar Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 397926876,
        name        = 'Legendary Cougar Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 219794592,
        name        = 'Legendary Cougar Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    ----------------------------------------------
    -- Legendary Coyote
    ----------------------------------------------
    {
        pelthash    = -1061362634,
        name        = 'Legendary Coyote Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1728819413,
        name        = 'Legendary Coyote Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1009802015,
        name        = 'Legendary Coyote Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    ----------------------------------------------
    -- Legendary Panther
    ----------------------------------------------
    {
        pelthash    = 2088901891,
        name        = 'Legendary Panther Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 836208559,
        name        = 'Legendary Panther Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 1600479946,
        name        = 'Legendary Panther Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    ----------------------------------------------
    -- Legendary Wolf
    ----------------------------------------------
    {
        pelthash    = -1946740647,
        name        = 'Legendary Wolf Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1548204069,
        name        = 'Legendary Wolf Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -907373381,
        name        = 'Legendary Wolf Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    ----------------------------------------------
    -- Legendary Buffalo
    ----------------------------------------------
    {
        pelthash    = -1087205695,
        name        = 'Legendary Buffalo Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -260181673,
        name        = 'Legendary Buffalo Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -857265622,
        name        = 'Legendary Buffalo Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    ----------------------------------------------
    -- Legendary Buck
    ----------------------------------------------
    {
        pelthash    = -308200059,
        name        = 'Legendary Buck Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = -1218522879,
        name        = 'Legendary Buck Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    {
        pelthash    = 923422806,
        name        = 'Legendary Buck Pelt',
        rewarditem1 = 'legendary_pelt',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },

}

Config.Animal = {

    ----------------------------------------------
    -- birds
    ----------------------------------------------
    { -- California Condor : a_c_californiacondor_01
        modelhash   = 1205982615,
        name        = 'California Condor',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Chicken : a_c_chicken_01
        modelhash   = -2063183075,
        name        = 'Chicken',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Neotropic Cormorant : "a_c_cormorant_01
        modelhash   = -2073130256,
        name        = 'Neotropic Cormorant',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Wooping Crane : a_c_cranewhooping_01
        modelhash   = -564099192,
        name        = 'Wooping Crane',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Malard Duck
        modelhash   = -1003616053,
        name        = 'Malard Duck',
        rewarditem1 = 'animal_heart', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Bald Eagle
        modelhash   = 1459778951,
        name        = 'Bald Eagle',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Egret : a_c_egret_01
        modelhash   = 831859211,
        name        = 'Egret',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Goose : a_c_goosecanada_01
        modelhash   = 723190474,
        name        = 'Goose',
        rewarditem1 = 'animal_heart', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Hawk : a_c_hawk_01
        modelhash   = -2145890973,
        name        = 'Hawk',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Heron : a_c_heron_01
        modelhash   = 1095117488,
        name        = 'Heron',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Loon : a_c_loon_01
        modelhash   = 386506078,
        name        = 'Loon',
        rewarditem1 = 'animal_heart', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Owl : a_c_owl_01
        modelhash   = -861544272,
        name        = 'Owl',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Parrot : a_c_parrot_01
        modelhash   = -1797450568,
        name        = 'Parrot',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Pelican : a_c_pelican_01
        modelhash   = 1265966684,
        name        = 'Pelican',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Pheasant : a_c_pheasant_01
        modelhash   = 1416324601,
        name        = 'Pheasant',
        rewarditem1 = 'animal_heart', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Pigeon : a_c_pigeon
        modelhash   = 111281960,
        name        = 'Pigeon',
        rewarditem1 = nil, 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Prairie Chicken : a_c_prairiechicken_01
        modelhash   = 2079703102,
        name        = 'Prairie Chicken',
        rewarditem1 = 'animal_heart', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Quail : a_c_quail_01
        modelhash   = 2105463796,
        name        = 'Quail',
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Rabbit : a_c_rabbit_01
        modelhash   = -541762431,
        name        = 'Rabbit',
        rewarditem1 = 'small_pelt', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Racoon : a_c_raccoon_01
        modelhash   = 1458540991,
        name        = 'Racoon',
        rewarditem1 = 'small_pelt', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- Rat : a_c_rat_01
        modelhash   = 989669666,
        name        = 'Rat',
        rewarditem1 = nil, 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_raven_01
        modelhash   = -575340245,
        name        = 'Raven',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_redfootedbooby_01
        modelhash   = -466687768,
        name        = 'Red Footed Booby',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_robin_01
        modelhash   = -1210546580,
        name        = 'Robin',
        rewarditem1 = nil, 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_rooster_01
        modelhash   = 2023522846,
        name        = 'Rooster',
        rewarditem1 = 'animal_heart', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_roseatespoonbill_01
        modelhash   = -1076508705,
        name        = 'Roseate Spoonbill',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_seagull_01
        modelhash   = -164963696,
        name        = 'Seagull',
        rewarditem1 = 'feather', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_skunk_01
        modelhash   = -1211566332,
        name        = 'Skunk',
        rewarditem1 = 'small_pelt', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_snakeblacktailrattle_01
        modelhash   = 846659001,
        name        = 'Snake',
        rewarditem1 = 'reptile_skin', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_snakeferdelance_01
        modelhash   = 1464167925,
        name        = 'Snake',
        rewarditem1 = 'reptile_skin', 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_songbird_01
        modelhash   = -1910795227,
        name        = 'Song Bird',
        rewarditem1 = nil, 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_sparrow_01
        modelhash   = -1028170431,
        name        = 'Sparrow',
        rewarditem1 = nil, 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_squirrel_01
        modelhash   = 1465438313,
        name        = 'Squirrel',
        rewarditem1 = nil, 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_toad_01
        modelhash   = 1502581273,
        name        = 'Toad',
        rewarditem1 = nil, 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_vulture_01
        modelhash   = 1104697660,
        name        = 'Vulture',
        rewarditem1 = nil, 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_woodpecker_01
        modelhash   = 510312109,
        name        = 'Woodpecker',
        rewarditem1 = nil, 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_woodpecker_02
        modelhash   = 729471181,
        name        = 'Woodpecker',
        rewarditem1 = nil, 
        rewarditem2 = nil,
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_turkeywild_01
        modelhash   = -2011226991,
        name        = 'Eastern Wild Turkey',
        rewarditem1 = 'feather', 
        rewarditem2 = 'animal_heart',
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_turkey_01
        modelhash   = -466054788,
        name        = 'Eastern Wild Turkey',
        rewarditem1 = 'feather', 
        rewarditem2 = 'animal_heart',
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },
    { -- a_c_turkey_02
        modelhash   = -166054593,
        name        = 'Eastern Wild Turkey',
        rewarditem1 = 'feather', 
        rewarditem2 = 'animal_heart',
        rewarditem3 = nil,
        rewarditem4 = nil,
        rewarditem5 = nil,
    },

}