local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-template:client:fakename')
AddEventHandler('qb-template:client:fakename', function(source, amount)
    TriggerServerEvent("qb-template:server:callforserverside", source, amount,  -- [[Optional"admin-bypass-fakename"]] )
    TriggerEvent('QBCore:Notify', src, {text="Secret Admin v2.0", caption="You added " .. amount .. " to your bank"}, "success")
end)
