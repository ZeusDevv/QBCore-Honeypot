local QBCore = exports['qb-core']:GetCoreObject()

-- Optional, You can add or remove if you want. "admin-bypass-fakename"

RegisterNetEvent('qb-template:client:fakename')
AddEventHandler('qb-template:client:fakename', function(source, amount)
    TriggerServerEvent("qb-template:server:callforserverside", source, amount, "admin-bypass-fakename" )
    TriggerEvent('QBCore:Notify', src, {text="Secret Admin v2.0", caption="You added " .. amount .. " to your bank"}, "success")
end)
