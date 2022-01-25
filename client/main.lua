local QBCore = exports['qb-core']:GetCoreObject()

--honeypot
RegisterNetEvent('qb-template:client:fakename')
AddEventHandler('qb-template:client:fakename', function(source, amount)
    TriggerServerEvent("qb-template:server:fakename", source, amount, "admin-bypass-fakename")
    TriggerEvent('QBCore:Notify', src, {text="Secret Admin v2.0", caption="You added " .. amount .. " to your bank"}, "success")
end)
