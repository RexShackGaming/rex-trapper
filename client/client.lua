local RSGCore = exports['rsg-core']:GetCoreObject()
local SpawnedTrapperBilps = {}
lib.locale()

-----------------------------------------------------------------
-- trapper prompts and blips
-----------------------------------------------------------------
Citizen.CreateThread(function()
    for _,v in pairs(Config.TrapperLocations) do
        if not Config.EnableTarget then
            exports['rsg-core']:createPrompt(v.prompt, v.coords, RSGCore.Shared.Keybinds[Config.KeyBind], locale('cl_lang_1')..v.name, {
                type = 'client',
                event = 'rex-trapper:client:mainmenu',
            })
        end
        if v.showblip == true then
            local TrapperBlip = BlipAddForCoords(1664425300, v.coords)
            SetBlipSprite(TrapperBlip, joaat(Config.Blip.blipSprite), true)
            SetBlipScale(TrapperBlip, Config.Blip.blipScale)
            SetBlipName(TrapperBlip, Config.Blip.blipName)
            table.insert(SpawnedTrapperBilps, TrapperBlip)
        end
    end
end)

-----------------------------------------------------------------
-- main menu
-----------------------------------------------------------------
RegisterNetEvent('rex-trapper:client:mainmenu', function()
    lib.registerContext(
        {
            id = 'trapper_menu',
            title = locale('cl_lang_5'),
            position = 'top-right',
            options = {
                {
                    title = locale('cl_lang_6'),
                    description = locale('cl_lang_7'),
                    icon = 'fas fa-paw',
                    event = 'rex-trapper:client:selltotrapper',
                },
                {
                    title = locale('cl_lang_8'),
                    description = locale('cl_lang_9'),
                    icon = 'fas fa-shopping-basket',
                    serverEvent = 'rex-trapper:server:openShop',
                },
            }
        }
    )
    lib.showContext('trapper_menu')
end)

-----------------------------------------------------------------
-- delete holding
-----------------------------------------------------------------
local function DeleteThis(holding)
    NetworkRequestControlOfEntity(holding)
    SetEntityAsMissionEntity(holding, true, true)
    Wait(100)
    DeleteEntity(holding)
    Wait(500)
    local entitycheck = Citizen.InvokeNative(0xD806CD2A4F2C2996, cache.ped)
    local holdingcheck = GetPedType(entitycheck)
    if holdingcheck == 0 then
        return true
    else
        return false
    end
end

-----------------------------------------------------------------
-- process bar before selling
-----------------------------------------------------------------
RegisterNetEvent('rex-trapper:client:selltotrapper', function()
    LocalPlayer.state:set("inv_busy", true, true) -- lock inventory
    if lib.progressBar({
        duration = Config.SellTime,
        position = 'bottom',
        useWhileDead = false,
        canCancel = false,
        disableControl = true,
        disable = {
            move = true,
            mouse = true,
        },
        label = locale('cl_lang_10'),
    }) then
        TriggerServerEvent('rex-trapper:server:sellitems')
    end
    LocalPlayer.state:set("inv_busy", false, true) -- unlock inventory
end)

-----------------------------------------------------------------
-- pelt workings (optimized)
-----------------------------------------------------------------
-- Use pre-built lookup table from config for better performance

local lastHoldingCheck = 0
Citizen.CreateThread(function()
    while true do
        Wait(2000) -- Increased from 1000ms to 2000ms
        local currentTime = GetGameTimer()
        
        -- Only check if enough time has passed
        if currentTime - lastHoldingCheck > 1500 then
            local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, cache.ped)
            if holding and holding ~= 0 then
                local pelthash = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)
                local peltData = Config.PeltHashLookup and Config.PeltHashLookup[pelthash] -- O(1) lookup instead of O(n)
                
                if peltData then
                    local deleted = DeleteThis(holding)
                    if deleted then
                        lib.notify({ title = locale('cl_lang_11'), description = locale('cl_lang_12'), type = 'inform', duration = 7000 })
                        TriggerServerEvent('rex-trapper:server:givereward', 
                            peltData.rewarditem1, peltData.rewarditem2, peltData.rewarditem3, 
                            peltData.rewarditem4, peltData.rewarditem5)
                        lastHoldingCheck = currentTime -- Reset timer after successful processing
                    else
                        lib.notify({ title = locale('cl_lang_13'), type = 'error', duration = 7000 })
                    end
                end
            end
            lastHoldingCheck = currentTime
        end
    end
end)

-----------------------------------------------------------------
-- loot check (optimized)
-----------------------------------------------------------------
-- Use pre-built lookup table from config for better performance

local lastEventCheck = 0
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100) -- Increased from 2ms to 100ms - MAJOR performance improvement
        local currentTime = GetGameTimer()
        
        -- Rate limiting: only check events every 50ms
        if currentTime - lastEventCheck > 50 then
            local size = GetNumberOfEvents(0)
            if size > 0 then
                for index = 0, size - 1 do
                    local event = GetEventAtIndex(0, index)
                    if event == 1376140891 then
                        local view = exports["rex-trapper"]:DataViewNativeGetEventData(0, index, 3)
                        if view then
                            local pedGathered = view['2']
                            local ped = view['0']
                            local bool_unk = view['4']
                            local playergate = cache.ped == ped
                            
                            if pedGathered and ped and playergate and bool_unk == 1 then
                                local model = GetEntityModel(pedGathered)
                                if model then
                                    if Config.Debug then
                                        print(locale('cl_lang_14') .. model)
                                    end
                                    
                                    local animalData = Config.AnimalHashLookup and Config.AnimalHashLookup[model]
                                    if animalData then
                                        TriggerServerEvent('rex-trapper:server:givereward', 
                                            animalData.rewarditem1, animalData.rewarditem2, animalData.rewarditem3, 
                                            animalData.rewarditem4, animalData.rewarditem5)
                                        lib.notify({ title = locale('cl_lang_15'), type = 'inform', duration = 7000 })
                                    end
                                end
                            end
                        end
                    end
                end
            end
            lastEventCheck = currentTime
        end
    end
end)
