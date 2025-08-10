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
-- pelt workings
-----------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        Wait(1000)
        local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, cache.ped)
        local pelthash = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)
        if holding ~= false then
            for i = 1, #Config.Pelts do
                if pelthash == Config.Pelts[i].pelthash then
                    local name = Config.Pelts[i].name
                    -- rewards
                    local rewarditem1 = Config.Pelts[i].rewarditem1
                    local rewarditem2 = Config.Pelts[i].rewarditem2
                    local rewarditem3 = Config.Pelts[i].rewarditem3
                    local rewarditem4 = Config.Pelts[i].rewarditem4
                    local rewarditem5 = Config.Pelts[i].rewarditem5
                   
                    local deleted = DeleteThis(holding)
                    if deleted then
                        lib.notify({ title = locale('cl_lang_11'), description = locale('cl_lang_12'), type = 'inform', duration = 7000 })
                        TriggerServerEvent('rex-trapper:server:givereward', rewarditem1, rewarditem2, rewarditem3, rewarditem4, rewarditem5)
                    else
                        lib.notify({ title = locale('cl_lang_13'), type = 'error', duration = 7000 })
                    end
                end
            end
        end
    end
end)

-----------------------------------------------------------------
-- loot check
-----------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2)
        local size = GetNumberOfEvents(0)
        if size > 0 then
            for index = 0, size - 1 do
                local event = GetEventAtIndex(0, index)
                if event == 1376140891 then
                    local view = exports["rex-trapper"]:DataViewNativeGetEventData(0, index, 3)
                    local pedGathered = view['2']
                    local ped = view['0']
                    local model = GetEntityModel(pedGathered)
                    local model = model
                    local bool_unk = view['4']
                    local playergate = cache.ped == ped

                    if model and playergate == true and Config.Debug == true then
                        print(locale('cl_lang_14') .. model)
                    end

                    for i = 1, #Config.Animal do 
                        if model and Config.Animal[i].modelhash ~= nil and playergate and bool_unk == 1 then
                            local chosenmodel = Config.Animal[i].modelhash
                            if model == chosenmodel then
                                local rewarditem1 = Config.Animal[i].rewarditem1
                                local rewarditem2 = Config.Animal[i].rewarditem2
                                local rewarditem3 = Config.Animal[i].rewarditem3
                                local rewarditem4 = Config.Animal[i].rewarditem4
                                local rewarditem5 = Config.Animal[i].rewarditem5
                                TriggerServerEvent('rex-trapper:server:givereward', rewarditem1, rewarditem2, rewarditem3, rewarditem4, rewarditem5)
                                lib.notify({ title = locale('cl_lang_15'), type = 'inform', duration = 7000 })
                            end
                        end
                    end
                end
            end
        end
    end
end)
