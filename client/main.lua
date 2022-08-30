local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = false
local onDuty = false
PlayerJob = {}

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == "gt" then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
	onDuty = duty
end)

Citizen.CreateThread(function()
    GunnarsTacos = AddBlipForCoord(416.2, -1910.99, 25.57)
    SetBlipSprite (GunnarsTacos, 209)
    SetBlipDisplay(GunnarsTacos, 4)
    SetBlipScale  (GunnarsTacos, 0.6)
    SetBlipAsShortRange(GunnarsTacos, true)
    SetBlipColour(GunnarsTacos, 5)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Gunnars Tacos")
    EndTextCommandSetBlipName(GunnarsTacos)
end) 

RegisterNetEvent("go-gunnarstacos:Duty")
AddEventHandler("go-gunnarstacos:Duty", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("go-gunnarstacos:Tray1")
AddEventHandler("go-gunnarstacos:Tray1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "GunnarsTacos-Tray1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "GunnarsTacos-Tray1", {
        maxweight = 30000,
        slots = 6,
    })
end)

RegisterNetEvent("go-gunnarstacos:Tray2")
AddEventHandler("go-gunnarstacos:Tray2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "GunnarsTacos-Tray2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "GunnarsTacos-Tray2", {
        maxweight = 30000,
        slots = 6,
    })
end)

RegisterNetEvent("go-gunnarstacos:Display")
AddEventHandler("go-gunnarstacos:Display", function()
    TriggerEvent("inventory:client:SetCurrentStash", "GunnarsTacos-Display")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "GunnarsTacos-Display", {
        maxweight = 1000000,
        slots = 100,
    })
end)

--Meal Creations
RegisterNetEvent("go-gunnarstacos:OpenBeefComboMeal")
AddEventHandler("go-gunnarstacos:OpenBeefComboMeal", function()
		--remove box
		TriggerServerEvent('QBCore:Server:RemoveItem', "gt-beef_combo_meal", 1)
		--add items from box
		TriggerServerEvent('QBCore:Server:AddItem', "gt-burrito", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "gt-beef_taco", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "gt-soda", 1)
end)

RegisterNetEvent("go-gunnarstacos:OpenChickenComboMeal")
AddEventHandler("go-gunnarstacos:OpenChickenComboMeal", function()
		--remove box
		TriggerServerEvent('QBCore:Server:RemoveItem', "gt-chicken_combo_meal", 1)
		--add items from box
		TriggerServerEvent('QBCore:Server:AddItem', "gt-burrito", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "gt-chicken_taco", 2)
		TriggerServerEvent('QBCore:Server:AddItem', "gt-soda", 1)
end)

RegisterNetEvent("go-gunnarstacos:BeefTaco")
AddEventHandler("go-gunnarstacos:BeefTaco", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-gunnarstacos:server:get:ingredientBeefTaco', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Beef Taco", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-tortilla", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-cooked_beef", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-seasoning", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-lettuce", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-cheese", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "gt-beef_taco", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gt-beef_taco"], "add", 1)
                    QBCore.Functions.Notify("You made a Beef Taco", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("go-gunnarstacos:ChickenTaco")
AddEventHandler("go-gunnarstacos:ChickenTaco", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-gunnarstacos:server:get:ingredientChickenTaco', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Chicken Taco", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-tortilla", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-cooked_chicken", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-seasoning", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-lettuce", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-cheese", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "gt-chicken_taco", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gt-chicken_taco"], "add",1)
                    QBCore.Functions.Notify("You made a Chicken Taco", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("go-gunnarstacos:Burrito")
AddEventHandler("go-gunnarstacos:Burrito", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-gunnarstacos:server:get:ingredientBurrito', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Burrito", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-tortilla", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-cooked_beef", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-seasoning", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-refried_beans", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-cheese", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "gt-burrito", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gt-burrito"], "add",1)
                    QBCore.Functions.Notify("You made a Burrito", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("go-gunnarstacos:Enchilada")
AddEventHandler("go-gunnarstacos:Enchilada", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-gunnarstacos:server:get:ingredientEnchilada', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Enchilada", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-tortilla", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-cooked_beef", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-seasoning", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-enchilada_sauce", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-cheese", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "gt-enchilada", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gt-enchilada"], "add",1)
                    QBCore.Functions.Notify("You made a Enchilada", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("go-gunnarstacos:Quesadilla")
AddEventHandler("go-gunnarstacos:Quesadilla", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-gunnarstacos:server:get:ingredientQuesadilla', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Quesadilla", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-tortilla", 1)
                    TriggerServerEvent('QBCore:Server:RemoveItem', "gt-cooked_chicken", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-seasoning", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-cheese", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "gt-quesadilla", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gt-quesadilla"], "add",1)
                    QBCore.Functions.Notify("You made a Quesadilla", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("go-gunnarstacos:Nachos")
AddEventHandler("go-gunnarstacos:Nachos", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-gunnarstacos:server:get:ingredientNachos', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Nachos", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-tortilla_chips", 1)
                    TriggerServerEvent('QBCore:Server:RemoveItem', "gt-cooked_beef", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-seasoning", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-salsa", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-nacho_cheese", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "gt-nachos", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gt-nachos"], "add",1)
                    QBCore.Functions.Notify("You made Nachos", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("go-gunnarstacos:BeefComboMeal")
AddEventHandler("go-gunnarstacos:BeefComboMeal", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-gunnarstacos:server:get:ingredientBeefComboMeal', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making a Beef Combo Meal", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-burrito", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-beef_taco", 2)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-soda", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "gt-beef_combo_meal", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gt-beef_combo_meal"], "add",1)
                    QBCore.Functions.Notify("You made a Beef Combo Meal", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("go-gunnarstacos:ChickenComboMeal")
AddEventHandler("go-gunnarstacos:ChickenComboMeal", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-gunnarstacos:server:get:ingredientChickenComboMeal', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making a Chicken Combo Meal", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-burrito", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-chicken_taco", 2)
					TriggerServerEvent('QBCore:Server:RemoveItem', "gt-soda", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "gt-chicken_combo_meal", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gt-chicken_combo_meal"], "add",1)
                    QBCore.Functions.Notify("You made a Chicken Combo Meal", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

-- Soda and Raw Meat Cooking
RegisterNetEvent("go-gunnarstacos:Soda")
AddEventHandler("go-gunnarstacos:Soda", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MixSoda()
        else
            QBCore.Functions.Notify("You don't have any soda syrup..", "error")
        end
      end, 'gt-soda_syrup')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("go-gunnarstacos:Coffee")
AddEventHandler("go-gunnarstacos:Coffee", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           BrewCoffee()
        else
            QBCore.Functions.Notify("You don't have any coffee beans..", "error")
        end
      end, 'gt-coffee_beans')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("go-gunnarstacos:CookedBeef")
AddEventHandler("go-gunnarstacos:CookedBeef", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           CookBeef()
        else
            QBCore.Functions.Notify("You don't have any ground beef..", "error")
        end
      end, 'gt-ground_beef')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("go-gunnarstacos:CookedChicken")
AddEventHandler("go-gunnarstacos:CookedChicken", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           CookChicken()
        else
            QBCore.Functions.Notify("You don't have any raw chicken..", "error")
        end
      end, 'gt-raw_chicken')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

-- Function Portion
function CookBeef()
    TriggerServerEvent('QBCore:Server:RemoveItem', "gt-ground_beef", 1)
    QBCore.Functions.Progressbar("pickup", "Cooking the Ground Beef..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    },{
        animDict = "amb@prop_human_bbq@male@base",
        anim = "base",
        flags = 8,
    }, {
        model = "prop_cs_fork",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    }
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "gt-cooked_beef", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gt-cooked_beef"], "add")
    QBCore.Functions.Notify("You cooked the beef", "success")
    StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end

function CookChicken()
    TriggerServerEvent('QBCore:Server:RemoveItem', "gt-raw_chicken", 1)
    QBCore.Functions.Progressbar("pickup", "Cooking the Raw Chicken..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    },{
        animDict = "amb@prop_human_bbq@male@base",
        anim = "base",
        flags = 8,
    }, {
        model = "prop_cs_fork",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    }    
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "gt-cooked_chicken", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gt-cooked_chicken"], "add")
    QBCore.Functions.Notify("You cooked the chicken", "success")
    StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end

function MixSoda()
    TriggerServerEvent('QBCore:Server:RemoveItem', "gt-soda_syrup", 1)
    QBCore.Functions.Progressbar("pickup", "Filling a cup..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    })
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "gt-soda", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gt-soda"], "add")
    QBCore.Functions.Notify("You made a Soda", "success")
end

function BrewCoffee()
    TriggerServerEvent('QBCore:Server:RemoveItem', "gt-coffee_beans", 1)
    QBCore.Functions.Progressbar("pickup", "Filling a cup..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    })
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "gt-coffee", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gt-coffee"], "add")
    QBCore.Functions.Notify("You made a Coffee", "success")
end

RegisterNetEvent("go-gunnarstacos:shop")
AddEventHandler("go-gunnarstacos:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "gt", Config.Items)
end)