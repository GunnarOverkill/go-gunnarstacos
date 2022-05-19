Based on ATMTACO

# Gunnars Tacos for QBCore Framework
GunnarsTacos with target 

## Dependencies :
QBCore Framework - https://github.com/qbcore-framework/qb-core

PolyZone - https://github.com/mkafrin/PolyZone

qb-target - https://github.com/BerkieBb/qb-target

qb-menu - https://github.com/qbcore-framework/qb-menu

nh-keyboard - https://github.com/nerohiro/nh-keyboard

## The script original 
https://github.com/Zach488/qb-burgershot
https://github.com/elvodkaa/qb-taco

## add to qb-core/shared/jobs.lua or qb-core/shared.lua (depending on which version of QBCore you are using)
```
    ["taco"] = {
		label = "Gunnars Tacos",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 50
            },
			['1'] = {
                name = "Employee",
                payment = 75
            },
			['2'] = {
                name = "Cooker",
                payment = 100
            },
			['3'] = {
                name = "Manager",
                payment = 125
            },
			['4'] = {
                name = "CEO",
				isboss = true,
                payment = 150
            },
        },
	},
  ```
 ## add to qb-bossmenu/config.lua
 ```
     ['taco'] = vector3(20.45, -1602.09, 29.38),
 ```
 
 ## add to qb-target/init.lua(sometimes config.lua) in the Config.TargetModels
 ```
	["gunnarstacosgarage"] = {
		models = {
			"ig_floyd"
		},
		options = {
			{
				type = "client",
				event = "garage:GunnarsTacosGarage",
				icon = "fas fa-car",
				label = "Gunnars Tacos Garage",
				job = "taco",
			}
		},
	distance = 2.5,
	},
 ```
 
 ## add to qb-core/shared/items.lua or qb-core/shared.lua (depending on which version of QBCore you are using)
```
	-- GunnarsTacos

	-- Food/Drinks
	['taco-beef_taco'] 		 	     = {['name'] = 'taco-beef_taco', 			    ['label'] = 'Beef Taco', 	   		    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-beeftaco.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Beef Tacos huh?'},
	['taco-chicken_taco'] 	 	     = {['name'] = 'taco-chicken_taco', 		    ['label'] = 'Chicken Taco',    			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-chickentaco.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Chicken Tacos huh?'},
	['taco-burrito'] 				 = {['name'] = 'taco-burrito', 			  	  	['label'] = 'Burrito', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-burrito.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Burritos huh?'},
	['taco-enchilada'] 		         = {['name'] = 'taco-enchilada', 			    ['label'] = 'Enchilada', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-enchilada.png',		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Enchiladas huh?'},
	['taco-quesadilla'] 		     = {['name'] = 'taco-quesadilla', 			    ['label'] = 'Quesadilla', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-quesadilla.png',        ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Quesadillas huh?'},
	['taco-nachos'] 		 	     = {['name'] = 'taco-nachos', 			        ['label'] = 'Nachos', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-nachos.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Nachos huh?'},
	['taco-soda'] 		 	   		 = {['name'] = 'taco-soda', 			    	['label'] = 'Soda', 	   		  	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-soda.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The Sodas good huh?'},
	['taco-coffee'] 		 	     = {['name'] = 'taco-coffee', 			    	['label'] = 'Coffee', 	   		  	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-coffee.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The Coffees good huh?'},

	-- Ingredients
	['taco-lettuce'] 		 	     = {['name'] = 'taco-lettuce', 			        ['label'] = 'Lettuce', 				    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-lettuce.png', 	   		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['taco-tortilla'] 		 	     = {['name'] = 'taco-tortilla', 			    ['label'] = 'Tortilla', 		        ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-tortilla.png', 	   		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['taco-seasoning'] 		 	     = {['name'] = 'taco-seasoning', 			    ['label'] = 'Seasoning', 			    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-seasoning.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['taco-cooked_beef'] 		     = {['name'] = 'taco-cooked_beef', 			  	['label'] = 'Cooked Beef', 			  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-cookedbeef.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['taco-cooked_chicken']          = {['name'] = 'taco-cooked_chicken', 			['label'] = 'Cooked Chicken', 		  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-cookedchicken.png',  	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['taco-enchilada_sauce'] 	     = {['name'] = 'taco-enchilada_sauce', 			['label'] = 'Enchilada Sauce', 		  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-enchiladasauce.png',   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['taco-ground_beef'] 			 = {['name'] = 'taco-ground_beef', 			  	['label'] = 'Ground Beef', 		  		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-groundbeef.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['taco-raw_chicken'] 		     = {['name'] = 'taco-raw_chicken', 			  	['label'] = 'Raw Chicken', 		  		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-rawchicken.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['taco-refried_beans'] 		     = {['name'] = 'taco-refried_beans', 			['label'] = 'Refried Beans', 		  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-refriedbeans.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['taco-tortilla_chips'] 	     = {['name'] = 'taco-tortilla_chips', 			['label'] = 'Tortilla Chips', 		  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-tortillachips.png',  	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['taco-soda_syrup'] 		     = {['name'] = 'taco-soda_syrup', 				['label'] = 'Soda Syrup', 			  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-sodasyrup.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['taco-coffee_beans'] 		     = {['name'] = 'taco-coffee_beans', 			['label'] = 'Coffee Beans', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-coffeebeans.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['taco-cheese'] 			     = {['name'] = 'taco-cheese', 			        ['label'] = 'Cheese', 				  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-cheese.png', 	       	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['taco-nacho_cheese'] 		  	 = {['name'] = 'taco-nacho_cheese', 		   	['label'] = 'Nacho Cheese', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-nachocheese.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['taco-salsa'] 			         = {['name'] = 'taco-salsa', 			       	['label'] = 'Salsa', 				  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-salsa.png', 	       	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	
	-- Meals
	['taco-beef_combo_meal'] 		 = {['name'] = 'taco-beef_combo_meal', 		    ['label'] = 'Beef Combo Meal', 	   	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-combomeal.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar made a whole combo meal, better hope you get something special...'},
	['taco-chicken_combo_meal'] 	 = {['name'] = 'taco-chicken_combo_meal',   	['label'] = 'Chicken Combo Meal', 	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-combomeal.png',		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar made a whole combo meal, better hope you get something special...'},

	-- Winning Items
	['taco-25off_coupon'] 		 	 = {['name'] = 'taco-25off_coupon', 			['label'] = '25% Off Coupon', 			['weight'] = 50, 		['type'] = 'item', 		['image'] = 'gt-25off.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = '25% off one Menu Item at Gunnars Tacos, does not apply to combo meals'},
	['taco-reverseflash_toy'] 		 = {['name'] = 'taco-reverseflash_toy', 		['label'] = 'The Reverse Flash', 		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-trfaf.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Action Figure From Gunnars Tacos'},
	['taco-flash_toy'] 		 		 = {['name'] = 'taco-flash_toy', 				['label'] = 'The Flash',				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-tfaf.png', 	    		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Action Figure From Gunnars Tacos'},
	['taco-reddeath_toy'] 		 	 = {['name'] = 'taco-reddeath_toy', 			['label'] = 'The Red Death', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-trdaf.png', 	        ['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Action Figure From Gunnars Taco Shop'},
	['taco-free_taco_coupon'] 		 = {['name'] = 'taco-free_taco_coupon', 		['label'] = 'Free Taco Coupon', 		['weight'] = 50, 		['type'] = 'item', 		['image'] = 'gt-freetaco.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'One Free Beef or Chicken Taco from Gunnars Tacos'},
```

## add to qb-smallresources/server/consumables.lua
```
-- GunnarsTacos

-- Food
QBCore.Functions.CreateUseableItem("taco-beef_taco", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("taco-chicken_taco", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("taco-burrito", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("taco-enchilada", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("taco-quesadilla", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("taco-nachos", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

-- Drinks
QBCore.Functions.CreateUseableItem("taco-soda", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("taco-coffee", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
```
## qb-smallresources/config.lua

# inside the config add this to ConsumeablesEat
```
    ["taco-beef_taco"] = math.random(40, 60),
    ["taco-chicken_taco"] = math.random(40, 60),
    ["taco-burrito"] = math.random(50, 80),
    ["taco-enchilada"] = math.random(40, 60),
    ["taco-quesadilla"] = math.random(40, 60),
    ["taco-nachos"] = math.random(50, 80),
```

# inside the config add this to ConsumablesDrink
```
    ["taco-soda"] = math.random(40, 50),
    ["taco-coffee"] = math.random(40, 50),
```
