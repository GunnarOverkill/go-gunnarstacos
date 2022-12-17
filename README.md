OUTDATED! New Version of QB/QB-Inventory changes things and I am unsure how to fix them.

Based on the ATMTACO MLO

*Feel free to change it from gunnarstacos to tacoshop or whatever u want it to be. I also have a version that is go-tacoshop that changes everything to taco shop.*

# Gunnars Tacos for QBCore Framework
GunnarsTacos with target 

## Dependencies :
QBCore Framework - https://github.com/qbcore-framework/qb-core

PolyZone - https://github.com/mkafrin/PolyZone

qb-target - https://github.com/BerkieBb/qb-target

qb-menu - https://github.com/qbcore-framework/qb-menu

nh-keyboard - https://github.com/nerohiro/nh-keyboard

nh-context - https://github.com/nerohiro/nh-context

## The original scripts 
https://github.com/Zach488/qb-burgershot
https://github.com/elvodkaa/qb-taco

## add to qb-core/shared/jobs.lua or qb-core/shared.lua (depending on which version of QBCore you are using)
```
    ["gt"] = {
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
     ['gt'] = vector3(20.45, -1602.09, 29.38),
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
				job = "gt",
			}
		},
	distance = 2.5,
	},
 ```
 
 ## add to qb-core/shared/items.lua or qb-core/shared.lua (depending on which version of QBCore you are using)
```
	-- GunnarsTacos

	-- Food/Drinks
	['gt-beef_taco'] 		 	     = {['name'] = 'gt-beef_taco', 			    ['label'] = 'Beef Taco', 	   		    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-beeftaco.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Beef Tacos huh?'},
	['gt-chicken_taco'] 	 	     = {['name'] = 'gt-chicken_taco', 		    ['label'] = 'Chicken Taco',    			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-chickentaco.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Chicken Tacos huh?'},
	['gt-burrito'] 				 = {['name'] = 'gt-burrito', 			  	  	['label'] = 'Burrito', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-burrito.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Burritos huh?'},
	['gt-enchilada'] 		         = {['name'] = 'gt-enchilada', 			    ['label'] = 'Enchilada', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-enchilada.png',		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Enchiladas huh?'},
	['gt-quesadilla'] 		     = {['name'] = 'gt-quesadilla', 			    ['label'] = 'Quesadilla', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-quesadilla.png',        ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Quesadillas huh?'},
	['gt-nachos'] 		 	     = {['name'] = 'gt-nachos', 			        ['label'] = 'Nachos', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-nachos.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Nachos huh?'},
	['gt-soda'] 		 	   		 = {['name'] = 'gt-soda', 			    	['label'] = 'Soda', 	   		  	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-soda.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The Sodas good huh?'},
	['gt-coffee'] 		 	     = {['name'] = 'gt-coffee', 			    	['label'] = 'Coffee', 	   		  	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-coffee.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The Coffees good huh?'},

	-- Ingredients
	['gt-lettuce'] 		 	     = {['name'] = 'gt-lettuce', 			        ['label'] = 'Lettuce', 				    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-lettuce.png', 	   		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['gt-tortilla'] 		 	     = {['name'] = 'gt-tortilla', 			    ['label'] = 'Tortilla', 		        ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-tortilla.png', 	   		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['gt-seasoning'] 		 	     = {['name'] = 'gt-seasoning', 			    ['label'] = 'Seasoning', 			    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-seasoning.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['gt-cooked_beef'] 		     = {['name'] = 'gt-cooked_beef', 			  	['label'] = 'Cooked Beef', 			  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-cookedbeef.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['gt-cooked_chicken']          = {['name'] = 'gt-cooked_chicken', 			['label'] = 'Cooked Chicken', 		  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-cookedchicken.png',  	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['gt-enchilada_sauce'] 	     = {['name'] = 'gt-enchilada_sauce', 			['label'] = 'Enchilada Sauce', 		  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-enchiladasauce.png',   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['gt-ground_beef'] 			 = {['name'] = 'gt-ground_beef', 			  	['label'] = 'Ground Beef', 		  		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-groundbeef.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['gt-raw_chicken'] 		     = {['name'] = 'gt-raw_chicken', 			  	['label'] = 'Raw Chicken', 		  		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-rawchicken.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['gt-refried_beans'] 		     = {['name'] = 'gt-refried_beans', 			['label'] = 'Refried Beans', 		  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-refriedbeans.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['gt-tortilla_chips'] 	     = {['name'] = 'gt-tortilla_chips', 			['label'] = 'Tortilla Chips', 		  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-tortillachips.png',  	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['gt-soda_syrup'] 		     = {['name'] = 'gt-soda_syrup', 				['label'] = 'Soda Syrup', 			  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-sodasyrup.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['gt-coffee_beans'] 		     = {['name'] = 'gt-coffee_beans', 			['label'] = 'Coffee Beans', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-coffeebeans.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['gt-cheese'] 			     = {['name'] = 'gt-cheese', 			        ['label'] = 'Cheese', 				  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-cheese.png', 	       	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['gt-nacho_cheese'] 		  	 = {['name'] = 'gt-nacho_cheese', 		   	['label'] = 'Nacho Cheese', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-nachocheese.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['gt-salsa'] 			         = {['name'] = 'gt-salsa', 			       	['label'] = 'Salsa', 				  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-salsa.png', 	       	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	
	-- Meals
	['gt-beef_combo_meal'] 		 = {['name'] = 'gt-beef_combo_meal', 		    ['label'] = 'Beef Combo Meal', 	   	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-combomeal.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar made a whole combo meal, better hope you get something special...'},
	['gt-chicken_combo_meal'] 	 = {['name'] = 'gt-chicken_combo_meal',   	['label'] = 'Chicken Combo Meal', 	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gt-combomeal.png',		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar made a whole combo meal, better hope you get something special...'},
```

## add to qb-smallresources/server/consumables.lua
```
-- GunnarsTacos

-- Food
QBCore.Functions.CreateUseableItem("gt-beef_taco", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("gt-chicken_taco", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("gt-burrito", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("gt-enchilada", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("gt-quesadilla", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("gt-nachos", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

-- Drinks
QBCore.Functions.CreateUseableItem("gt-soda", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("gt-coffee", function(source, item)
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
    ["gt-beef_taco"] = math.random(40, 60),
    ["gt-chicken_taco"] = math.random(40, 60),
    ["gt-burrito"] = math.random(50, 80),
    ["gt-enchilada"] = math.random(40, 60),
    ["gt-quesadilla"] = math.random(40, 60),
    ["gt-nachos"] = math.random(50, 80),
```

# inside the config add this to ConsumablesDrink
```
    ["gt-soda"] = math.random(40, 50),
    ["gt-coffee"] = math.random(40, 50),
```
