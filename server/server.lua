local RSGCore = exports['rsg-core']:GetCoreObject()
local haspelts = false
lib.locale()

------------------------------------------
-- give reward (optimized)
------------------------------------------
RegisterNetEvent('rex-trapper:server:givereward')
AddEventHandler('rex-trapper:server:givereward', function(rewarditem1, rewarditem2, rewarditem3, rewarditem4, rewarditem5)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if not Player then return end

    -- Optimized reward giving with array iteration
    local rewards = {rewarditem1, rewarditem2, rewarditem3, rewarditem4, rewarditem5}
    
    for i = 1, #rewards do
        local item = rewards[i]
        if item ~= nil and item ~= '' and type(item) == 'string' then
            if RSGCore.Shared.Items[item] then
                Player.Functions.AddItem(item, 1)
                TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[item], 'add', 1)
            end
        end
    end
end)

------------------------------------------
-- sell to trapper (optimized)
------------------------------------------
-- Sellable items lookup table for better performance
local SellableItems = {
    ['poor_pelt'] = Config.PoorPeltPrice,
    ['good_pelt'] = Config.GoodPeltPrice,
    ['perfect_pelt'] = Config.PerfectPeltPrice,
    ['legendary_pelt'] = Config.LegendaryPeltPrice,
    ['small_pelt'] = Config.SmallPeltPrice,
    ['reptile_skin'] = Config.ReptileSkinPrice,
    ['feather'] = Config.FeatherPrice
}

RegisterServerEvent('rex-trapper:server:sellitems')
AddEventHandler('rex-trapper:server:sellitems', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if not Player then return end
    
    local totalPrice = 0
    local hasSellableItems = false
    local itemsToRemove = {}
    
    -- First pass: calculate total value and collect items to remove
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, item in pairs(Player.PlayerData.items) do
            if item ~= nil and item.name and item.amount and item.amount > 0 then
                local itemPrice = SellableItems[item.name]
                if itemPrice and itemPrice > 0 then
                    totalPrice = totalPrice + (itemPrice * item.amount)
                    table.insert(itemsToRemove, {slot = k, name = item.name, amount = item.amount})
                    hasSellableItems = true
                end
            end
        end
        
        -- Second pass: remove items and give payment
        if hasSellableItems and totalPrice > 0 then
            for _, itemData in pairs(itemsToRemove) do
                if RSGCore.Shared.Items[itemData.name] then
                    Player.Functions.RemoveItem(itemData.name, itemData.amount, itemData.slot)
                    TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[itemData.name], 'remove', itemData.amount)
                end
            end
            
            Player.Functions.AddMoney(Config.PaymentType, totalPrice)
            TriggerEvent('rsg-log:server:CreateLog', Config.WebhookName, Config.WebhookTitle, Config.WebhookColour, 
                GetPlayerName(src) .. Config.Lang1 .. totalPrice, false)
        else
            TriggerClientEvent('ox_lib:notify', src, {title = locale('sv_lang_1'), type = 'error', duration = 7000 })
        end
    else
        TriggerClientEvent('ox_lib:notify', src, {title = locale('sv_lang_1'), type = 'error', duration = 7000 })
    end
end)

--------------------------------------
-- register shop
--------------------------------------
CreateThread(function() 
    exports['rsg-inventory']:CreateShop({
        name = 'trapper',
        label = 'Trapper Shop',
        slots = #Config.TrapperShopItems,
        items = Config.TrapperShopItems,
        persistentStock = Config.PersistStock,
    })
end)

--------------------------------------
-- open shop
--------------------------------------
RegisterNetEvent('rex-trapper:server:openShop', function() 
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if not Player then return end
    exports['rsg-inventory']:OpenShop(src, 'trapper')
end)
