ESX.RegisterServerCallback('esx_washlab:callback:getBlackMoneyAmount', function(source, cb)
    local sourcePlayer = ESX.GetPlayerFromId(source)
    local amount = sourcePlayer.getAccount('black_money').money

    if amount ~= nil then
        cb(amount)
    end
end)

RegisterNetEvent('esx_washlab:server:removeBlackMoney')
AddEventHandler('esx_washlab:server:removeBlackMoney', function(amount)
    local sourcePlayer = ESX.GetPlayerFromId(source)
    
    sourcePlayer.removeAccountMoney('black_money', amount)
end)

RegisterNetEvent('esx_washlab:server:giveCleanMoney')
AddEventHandler('esx_washlab:server:giveCleanMoney', function(amount)
    local sourcePlayer = ESX.GetPlayerFromId(source)
    if Config.TakePercentage then
        total = amount * Config.WashPercentage        
    else
        total = amount
    end
    sourcePlayer.addMoney(total) 
    TriggerClientEvent('esx:showNotification', source, 'Je hebt ~y~€' .. total .. '~s~. gewassen')
end)
