local QBCore = exports['qb-core']:GetCoreObject()


RegisterServerEvent("go-gunnarstacos:bill:player")
AddEventHandler("go-gunnarstacos:bill:player", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'gt' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.insert('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (:citizenid, :amount, :society, :sender)', {
                            ['citizenid'] = billed.PlayerData.citizenid,
                            ['amount'] = amount,
                            ['society'] = biller.PlayerData.job.name,
                            ['sender'] = biller.PlayerData.charinfo.firstname
                        })
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must Be A Valid Amount Above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You Cannot Bill Yourself', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'Player Not Online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No Access', 'error')
        end
end)

QBCore.Functions.CreateCallback('go-gunnarstacos:server:get:ingredientBeefTaco', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local tortilla = Ply.Functions.GetItemByName("gt-tortilla")
    local cooked_beef = Ply.Functions.GetItemByName("gt-cooked_beef")
    local seasoning = Ply.Functions.GetItemByName("gt-seasoning")
    local lettuce = Ply.Functions.GetItemByName("gt-lettuce")
    local cheese = Ply.Functions.GetItemByName("gt-cheese")
    if tortilla ~= nil and cooked_beef ~= nil and seasoning ~= nil and lettuce ~= nil and cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('go-gunnarstacos:server:get:ingredientChickenTaco', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local tortilla = Ply.Functions.GetItemByName("gt-tortilla")
    local cooked_chicken = Ply.Functions.GetItemByName("gt-cooked_chicken")
    local seasoning = Ply.Functions.GetItemByName("gt-seasoning")
    local lettuce = Ply.Functions.GetItemByName("gt-lettuce")
    local cheese = Ply.Functions.GetItemByName("gt-cheese")
    if tortilla ~= nil and cooked_chicken ~= nil and seasoning ~= nil and lettuce ~= nil and cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('go-gunnarstacos:server:get:ingredientBurrito', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local tortilla = Ply.Functions.GetItemByName("gt-tortilla")
    local cooked_beef = Ply.Functions.GetItemByName("gt-cooked_beef")
    local seasoning = Ply.Functions.GetItemByName("gt-seasoning")
    local refried_beans = Ply.Functions.GetItemByName("gt-refried_beans")
    local cheese = Ply.Functions.GetItemByName("gt-cheese")
    if tortilla ~= nil and cooked_beef ~= nil and seasoning ~= nil and refried_beans ~= nil and cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('go-gunnarstacos:server:get:ingredientEnchilada', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local tortilla = Ply.Functions.GetItemByName("gt-tortilla")
    local cooked_beef = Ply.Functions.GetItemByName("gt-cooked_beef")
    local seasoning = Ply.Functions.GetItemByName("gt-seasoning")
    local enchilada_sauce = Ply.Functions.GetItemByName("gt-enchilada_sauce")
    local cheese = Ply.Functions.GetItemByName("gt-cheese")
    if tortilla ~= nil and cooked_beef ~= nil and seasoning ~= nil and enchilada_sauce ~= nil and cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('go-gunnarstacos:server:get:ingredientQuesadilla', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local tortilla = Ply.Functions.GetItemByName("gt-tortilla")
    local cooked_chicken = Ply.Functions.GetItemByName("gt-cooked_chicken")
    local seasoning = Ply.Functions.GetItemByName("gt-seasoning")
    local cheese = Ply.Functions.GetItemByName("gt-cheese")
    if tortilla ~= nil and cooked_chicken ~= nil and seasoning ~= nil and cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('go-gunnarstacos:server:get:ingredientNachos', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local tortilla = Ply.Functions.GetItemByName("gt-tortilla_chips")
    local cooked_beef = Ply.Functions.GetItemByName("gt-cooked_beef")
    local seasoning = Ply.Functions.GetItemByName("gt-seasoning")
    local salsa = Ply.Functions.GetItemByName("gt-salsa")
    local nacho_cheese = Ply.Functions.GetItemByName("gt-nacho_cheese")
    if tortilla ~= nil and cooked_beef ~= nil and seasoning ~= nil and salsa ~= nil and nacho_cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('go-gunnarstacos:server:get:ingredientBeefComboMeal', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local burrito = Ply.Functions.GetItemByName("gt-burrito")
    local beef_taco = Ply.Functions.GetItemByName("gt-beef_taco")
    local soda = Ply.Functions.GetItemByName("gt-soda")
    if burrito ~= nil and beef_taco ~= nil and soda ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('go-gunnarstacos:server:get:ingredientChickenComboMeal', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local burrito = Ply.Functions.GetItemByName("gt-burrito")
    local chicken_taco = Ply.Functions.GetItemByName("gt-chicken_taco")
    local soda = Ply.Functions.GetItemByName("gt-soda")
    if burrito ~= nil and chicken_taco ~= nil and soda ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateUseableItem("gt-xtc_taco", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("go-gunnarstacos:XTCTaco", source, item.name)
end)

QBCore.Functions.CreateUseableItem("gt-lsd_taco", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("go-gunnarstacos:LSDTaco", source, item.name)
end)

QBCore.Functions.CreateUseableItem("gt-beef_combo_meal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("go-gunnarstacos:OpenBeefComboMeal", source, item.name)
end)

QBCore.Functions.CreateUseableItem("gt-chicken_combo_meal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("go-gunnarstacos:OpenChickenComboMeal", source, item.name)
end)
