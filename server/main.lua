local QBCore = exports['qb-core']:GetCoreObject()

--honeypot
RegisterServerEvent('qb-template:server:fakename')
AddEventHandler('qb-template:server:fakename', function(source, amount, reason)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('QBCore:Notify', src, {text="Secret Admin", caption="You added " .. amount .. " to your bank"}, "success")
    TriggerEvent('qb-log:server:CreateLog', 'anticheat', 'HONEYPOT TRIGGERED', 'red', Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname .. ' tried to givethemselves $' .. amount .. ' via an exploit trap (honeypot). They have been banned.', false)
end)

