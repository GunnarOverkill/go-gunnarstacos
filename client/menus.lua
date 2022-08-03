local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("GunnarsTacosDuty", vector3(429.25, -1913.84, 25.2), 1.4, 1.2, {
		name = "GunnarsTacosDuty",
		heading = 32,
		debugPoly = false,
		minZ=24.5,
		maxZ=27.5,
	}, {
		options = {
		    {  
			event = "go-gunnarstacos:Duty",
			icon = "far fa-clipboard",
			label = "Clock On/Off",
			job = "gt",
		    },
		},
		distance = 1.5
	})

	exports['qb-target']:AddBoxZone("gunnarstacos_tray_1", vector3(417.8, -1915.28, 25.25), 1.05, 1.0, {
		name = "gunnarstacos_tray_1",
		heading = 35.0,
		debugPoly = false,
		minZ=24.5,
		maxZ=27.5,
	}, {
		options = {
		    {
			event = "go-gunnarstacos:Tray1",
			icon = "far fa-clipboard",
			label = "Tray 1",
		    },
		},
		distance = 1.5
	})
    
    exports['qb-target']:AddBoxZone("gunnarstacos_tray_2", vector3(416.33, -1916.8, 25.71), 0.5, 0.7, {
		name="gunnarstacos_tray_2",
		heading=318,
		debugPoly=false,
		minZ=24.5,
		maxZ=27.5,
	}, {
		options = {
		    {
			event = "go-gunnarstacos:Tray2",
			icon = "far fa-clipboard",
			label = "Tray 2",
		    },
		},
		distance = 1.5
	})

    exports['qb-target']:AddBoxZone("gunnarstacosfridge", vector3(424.27, -1921.76, 25.83), 1.5, 1.5, {
        name="gunnarstacosfridge",
        heading=50,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
           {
            event = "nh-context:FridgeGunnarsTacos",
            icon = "fa-solid fa-refrigerator",
            label = "Open Fridge",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("gunnarstacosorderingredients", vector3(426.09, -1913.68, 25.75), 1.7, 1.7, {
        name="gunnarstacosorderingredients",
        heading=50,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "nh-context:OrderMenuGunnarsTacos",
            icon = "fas fa-laptop",
            label = "Get Ingredients",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("gunnarstacosdisplay", vector3(420.22, -1916.67, 25.62), 1.3, 1.0, {
        name="gunnarstacosdisplay",
        heading=50,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "go-gunnarstacos:Storage",
            icon = "fas fa-box",
            label = "Storage",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("makefoodgunnarstacos", vector3(427.57, -1918.39, 25.46), 1.8, 0.7, {
        name="makefoodgunnarstacos",
        heading=140,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "nh-context:FoodsGunnarsTacos",
            icon = "fa-solid fa-taco",
            label = "Food Work Station",
            job = "gt",
            },
        },
        distance = 1.5
    })


    exports['qb-target']:AddBoxZone("makemealsgunnarstacos", vector3(421.28, -1915.42, 25.56), 1.8, 0.7, {
        name="makemealsgunnarstacos",
        heading=140,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "nh-context:MealsGunnarsTacos",
            icon = "fa-solid fa-hand-holding-box",
            label = "Meal Work Station",
            job = "gt",
            },
        },
        distance = 1.5
    })
    
    exports['qb-target']:AddBoxZone("cookingmeatgunnarstacos", vector3(425.31, -1920.79, 25.29), 1.8, 0.7, {
        name="cookingmeatgunnarstacos",
        heading=140,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "nh-context:CookMeatGunnarsTacos",
            icon = "fa-solid fa-meat",
            label = "Cook Meats Work Station",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("GunnarsTacos_register_1", vector3(419.07, -1914.49, 25.86), 1.0, 0.8, {
        name="GunnarsTacos_register_1",
        debugPoly=false,
        heading=125,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "go-gunnarstacos:bill",
            parms = "1",
            icon = "fas fa-credit-card",
            label = "Charge Customer",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("GunnarsTacos_register_2", vector3(416.96, -1916.28, 25.86), 1.0, 0.8, {
        name="GunnarsTacos_register_2",
        debugPoly=false,
        heading=125,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "go-gunnarstacos:bill",
            parms = "1",
            icon = "fas fa-credit-card",
            label = "Charge Customer",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("gunnarstacosdrinks", vector3(418.86, -1917.76, 25.5), 1.0, 0.6, {
        name="gunnarstacosdrinks",
        heading=34,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "nh-context:DrinkMenuGunnarsTacos",
            icon = "fas fa-filter",
            label = "Make Some Soda and Coffee",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("gunnarstacosdrinks2", vector3(422.98, -1912.66, 25.64), 1.0, 0.6, {
        name="gunnarstacosdrinks2",
        heading=34,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "nh-context:DrinkMenuGunnarsTacos",
            icon = "fas fa-filter",
            label = "Make Some Soda and Coffee",
            job = "gt",
            },
        },
        distance = 1.5
    })

end)

-- QB-Menu --

RegisterNetEvent('nh-context:FoodsGunnarsTacos', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Available Foods",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Make a Beef Taco",
            txt = "Tortilla , Cooked Beef , Seasoning , Lettuce, Cheese",
            params = {
                event = "go-gunnarstacos:BeefTaco"
            }
        },
        {
            header = "Make a Chicken Taco",
            txt = "Tortilla , Cooked Chicken , Seasoning , Lettuce, Cheese",
            params = {
                event = "go-gunnarstacos:ChickenTaco"
            }
        },
        {
            header = "Make a Burrito",
            txt = "Tortilla , Cooked Beef , Seasoning , Refried Beans , Cheese",
            params = {
                event = "go-gunnarstacos:Burrito"
            }
        },
        {
            header = "Make an Enchilada",
            txt = "Tortilla , Cooked Beef , Seasoning , Enchilada Sauce , Cheese",
            params = {
                event = "go-gunnarstacos:Enchilada"
            }
        },
        {
            header = "Make a Quesadilla",
            txt = "Tortilla , Cooked Chicken , Seasoning , Cheese",
            params = {
                event = "go-gunnarstacos:Quesadilla"
            }
        },
        {
            header = "Make Nachos",
            txt = "Tortilla Chips , Cooked Beef , Seasoning , Salsa , Nacho Cheese",
            params = {
                event = "go-gunnarstacos:Nachos"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:MealsGunnarsTacos', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Available Foods",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Make a Beef Taco Meal",
            txt = "Burrito, Beef Taco x2, Soda",
            params = {
                event = "go-gunnarstacos:BeefComboMeal"
            }
        },
        {
            header = "Make a Chicken Taco Meal",
            txt = "Burrito, Chicken Taco x2, Soda",
            params = {
                event = "go-gunnarstacos:ChickenComboMeal"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:CookMeatGunnarsTacos', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Available Foods",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Cook Ground Beef",
            txt = "Ground Beef",
            params = {
                event = "go-gunnarstacos:CookedBeef"
            }
        },
        {
            header = "Cook Raw Chicken",
            txt = "Raw Chicken",
            params = {
                event = "go-gunnarstacos:CookedChicken"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:FridgeGunnarsTacos', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Fridge",
            isMenuHeader = true
        },
        {
            header = "Open Fridge",
            txt = "See what you have in storage",
            params = {
                event = "go-gunnarstacos:Storage2"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:OrderMenuGunnarsTacos', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Ingredients",
            isMenuHeader = true
        },
        {
            header = "Get Ingredients",
            txt = "Get New Ingredients",
            params = {
                event = "go-gunnarstacos:shop"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:DrinkMenuGunnarsTacos', function(data)
    exports['qb-menu']:openMenu({
        {
            id = 0,
            header = "Soda Dispenser",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            
            header = "Pour a Cup of Soda",
            txt = "Soda Syrup",
            params = {
                event = "go-gunnarstacos:Soda"
            }
        },
        {
            
            header = "Pour a Cup of Coffee",
            txt = "Coffee Beans",
            params = {
                event = "go-gunnarstacos:Coffee"
            }
        },
        {
           
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
    })
end)

-- Bill Stuff
RegisterNetEvent("go-gunnarstacos:bill")
AddEventHandler("go-gunnarstacos:bill", function()
    local bill = exports['qb-input']:ShowInput({
        header = "Create Receipt",
		submitText = "Bill",
        inputs = {
            {
                text = "Server ID(#)",
				name = "citizenid", -- name of the input should be unique otherwise it might override
                type = "text", -- type of the input
                isRequired = true -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            },
            {
                text = "Bill Price ($)", -- text you want to be displayed as a place holder
                name = "billprice", -- name of the input should be unique otherwise it might override
                type = "number", -- type of the input - number will not allow non-number characters in the field so only accepts 0-9
                isRequired = false -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            }
			
        }
    })
    if bill ~= nil then
        if bill.citizenid == nil or bill.billprice == nil then 
            return 
        end
        TriggerServerEvent("go-gunnarstacos:bill:player", bill.citizenid, bill.billprice)
    end
end)

