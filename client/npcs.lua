local spawnedPeds = {}

Citizen.CreateThread(function()
    while true do
        Wait(500)
        for k,v in pairs(Config.TrapperLocations) do
            local playerCoords = GetEntityCoords(PlayerPedId())
            local distance = #(playerCoords - v.npccoords.xyz)

            if distance < Config.DistanceSpawn and not spawnedPeds[k] then
                local spawnedPed = NearPed(v.npcmodel, v.npccoords)
                spawnedPeds[k] = { spawnedPed = spawnedPed }
            end
            
            if distance >= Config.DistanceSpawn and spawnedPeds[k] then
                if Config.FadeIn then
                    for i = 255, 0, -51 do
                        Wait(50)
                        SetEntityAlpha(spawnedPeds[k].spawnedPed, i, false)
                    end
                end
                DeletePed(spawnedPeds[k].spawnedPed)
                spawnedPeds[k] = nil
            end
        end
    end
end)

function NearPed(npcmodel, npccoords)
    RequestModel(npcmodel)
    while not HasModelLoaded(npcmodel) do
        Wait(50)
    end
    spawnedPed = CreatePed(npcmodel, npccoords.x, npccoords.y, npccoords.z - 1.0, npccoords.w, false, false, 0, 0)
    SetEntityAlpha(spawnedPed, 0, false)
    SetRandomOutfitVariation(spawnedPed, true)
    SetEntityCanBeDamaged(spawnedPed, false)
    SetEntityInvincible(spawnedPed, true)
    FreezeEntityPosition(spawnedPed, true)
    SetBlockingOfNonTemporaryEvents(spawnedPed, true)
    SetPedCanBeTargetted(spawnedPed, false)
    SetPedFleeAttributes(spawnedPed, 0, false)
    if Config.FadeIn then
        for i = 0, 255, 51 do
            Wait(50)
            SetEntityAlpha(spawnedPed, i, false)
        end
    end
    if Config.EnableTarget then
        exports.ox_target:addLocalEntity(spawnedPed, {
            {
                name = 'npc_trapper',
                icon = 'far fa-eye',
                label = locale('cl_lang_1'),
                onSelect = function()
                    TriggerEvent('rex-trapper:client:mainmenu')
                end,
                distance = 3.0
            }
        })
    end
    return spawnedPed
end

-- cleanup
AddEventHandler("onResourceStop", function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    for k,v in pairs(spawnedPeds) do
        DeletePed(spawnedPeds[k].spawnedPed)
        spawnedPeds[k] = nil
    end
end)
