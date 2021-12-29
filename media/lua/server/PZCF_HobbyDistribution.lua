require 'Items/SuburbsDistributions';
require 'Items/ProceduralDistributions';

--##################################################################################
-- Util Functions
--##################################################################################

local function insertTable(t1, t2)
    local n = #t1
    for i = 1, #t2 do
        t1[n + i] = t2[i]
    end
end

--##################################################################################
-- Item Reference Tables
--##################################################################################

local PZCF_HobbiesModNoToolsRare = {
	"PZCF_HobbyPaints", 1,		
	"PZCF_Hobby_Trees", 0.1,
	"PZCF_Hobby_Flock", 0.1,
	"PZCF_SolderingIron", 0.1,	
	"PZCF_SolderWire", 0.1,
	"PZCF_SolderingIron", 0.1,	
	"PZCF_SolderWire", 0.1,	
	"PZCF_HobbyMagazine1", 0.05,
	"PZCF_HobbyMagazine2", 0.05,
	"PZCF_HobbyMagazine3", 0.05,
	"PZCF_HobbyMagazineDiecast", 0.01,
	"PZCF_TrainStructure", 0.01,
	"PZCF_TrainSet", 0.01,
	"PZCF_TrainTracks", 0.01,
	"PZCF_KitAirliner", 0.01,
	"PZCF_KitAmbulance", 0.01,
	"PZCF_KitAPC", 0.01,
	"PZCF_KitAttackHelicopter", 0.01,
	"PZCF_KitBattleship", 0.01,
	"PZCF_KitBiplane", 0.01,
	"PZCF_KitDieselLocomotive", 0.01,	
	"PZCF_KitElectricLocomotive", 0.01,
	"PZCF_KitFireTruck", 0.01,
	"PZCF_KitJetFighter", 0.01,
	"PZCF_KitMilitaryJeep", 0.01,
	"PZCF_KitPoliceCar", 0.01,
	"PZCF_KitSAMLauncher", 0.01,
	"PZCF_KitSailingShip", 0.01,
	"PZCF_KitSchoolBus", 0.01,
	"PZCF_KitSpaceShuttle", 0.001,
	"PZCF_KitSpiffoMobile", 0.001,
	"PZCF_KitSportsCar", 0.01,
	"PZCF_KitSteamLocomotive", 0.01,
	"PZCF_KitSubmarine", 0.01,
	"PZCF_KitTankDesert", 0.01,	
	"PZCF_KitTankGreen", 0.01,
	"PZCF_KitTransportHelicopter", 0.01,
	"PZCF_KitSemiTruck", 0.01,
	"PZCF_FoodTruck_Bread", 0.01,
	"PZCF_FoodTruck_Burger", 0.01,
	"PZCF_FoodTruck_Chicken", 0.01,
	"PZCF_FoodTruck_Pizza", 0.01,	
	"PZCF_FoodTruck_Sushi", 0.01,
	"PZCF_FoodTruck_Milk", 0.01,
	"PZCF_FoodTruck_Fruit", 0.01,
	"PZCF_FoodTruck_FishAndChips", 0.01,
	"PZCF_FoodTruck_HotDog", 0.01,
	"PZCF_FoodTruck_Donut", 0.01,
	"PZCF_FoodTruck_StirFry", 0.01,
	"PZCF_FoodTruck_IceCream", 0.01,		
	"PZCF_FoodTruck_Coffee", 0.01,
	"PZCF_FoodTruck_ShakeAndFries", 0.01,
	"PZCF_FoodTruck_Taco", 0.01,
	"PZCF_FoodTruck_BBQ", 0.01,
	"PZCF_BoosterPack", 0.01,
	"PZCF_BoosterPack", 0.01,	
	"PZCF_BoosterPack", 0.01,
}

local PZCF_HobbiesModMags = {
    "Magazine", 7,
    "Magazine", 7,
	"PZCF_HobbyMagazine1", 0.1,
	"PZCF_HobbyMagazine2", 0.1,
	"PZCF_HobbyMagazine3", 0.1,
	"PZCF_HobbyMagazineDiecast", 0.1,	
}

local PZCF_HobbiesModTrains = {
	"PZCF_HobbyPaints", 2,
	"PZCF_HobbyPaints", 2,		
	"PZCF_SolderingIron", 1,	
	"PZCF_SolderWire", 1,	
	"PZCF_Hobby_Trees", 2,
	"PZCF_Hobby_Flock", 2,
	"PZCF_HobbyMagazine1", 1,
	"PZCF_HobbyMagazine2", 1,
	"PZCF_HobbyMagazine3", 1,
	"PZCF_TrainStructure", 1,
	"PZCF_TrainSet", 0.5,
	"PZCF_TrainTracks", 0.5,
}

local PZCF_HobbiesModFoodTrucksRare = {
	"PZCF_FoodTruck_Bread", 0.001,
	"PZCF_FoodTruck_Burger", 0.001,
	"PZCF_FoodTruck_Chicken", 0.001,
	"PZCF_FoodTruck_Pizza", 0.001,	
	"PZCF_FoodTruck_Sushi", 0.001,
	"PZCF_FoodTruck_Milk", 0.001,
	"PZCF_FoodTruck_Fruit", 0.001,
	"PZCF_FoodTruck_FishAndChips", 0.001,
	"PZCF_FoodTruck_HotDog", 0.001,
	"PZCF_FoodTruck_Donut", 0.001,
	"PZCF_FoodTruck_StirFry", 0.001,
	"PZCF_FoodTruck_IceCream", 0.001,		
	"PZCF_FoodTruck_Coffee", 0.001,
	"PZCF_FoodTruck_ShakeAndFries", 0.001,
	"PZCF_FoodTruck_Taco", 0.001,
	"PZCF_FoodTruck_BBQ", 0.001,		
}

local PZCF_HobbiesModSoldering = {	
	"PZCF_SolderingIron", 2,	
	"PZCF_SolderWire", 2,
	"PZCF_SolderingIron", 2,	
	"PZCF_SolderWire", 2,	
}

local PZCF_HobbiesModTGCRare = {
	"PZCF_BoosterPack", 0.1,
}


-- Add hobby items to child wardrobe
insertTable(ProceduralDistributions.list["WardrobeChild"].items, PZCF_HobbiesModNoToolsRare)

-- Add hobby items to toy store
insertTable(ProceduralDistributions.list["GigamartToys"].items, PZCF_HobbiesModNoToolsRare)

-- corpses
insertTable(SuburbsDistributions["all"]["inventorymale"].items, PZCF_HobbiesModTGCRare)
insertTable(SuburbsDistributions["all"]["inventoryfemale"].items, PZCF_HobbiesModTGCRare)

-- post
insertTable(ProceduralDistributions.list["PostOfficeMagazines"].items, PZCF_HobbiesModMags)

-- bookstore
insertTable(ProceduralDistributions.list["BookstoreBooks"].items, PZCF_HobbiesModMags)

-- livingroom
insertTable(ProceduralDistributions.list["LivingRoomShelf"].items, PZCF_HobbiesModMags)
insertTable(ProceduralDistributions.list["LivingRoomShelfNoTapes"].items, PZCF_HobbiesModMags)

-- daycare
insertTable(ProceduralDistributions.list["DaycareCounter"].items, PZCF_HobbiesModMags)
insertTable(ProceduralDistributions.list["DaycareShelves"].items, PZCF_HobbiesModMags)
insertTable(ProceduralDistributions.list["DaycareCounter"].items, PZCF_HobbiesModFoodTrucksRare)
insertTable(ProceduralDistributions.list["DaycareShelves"].items, PZCF_HobbiesModFoodTrucksRare)

-- vehicle
insertTable(VehicleDistributions["GloveBox"].items, PZCF_HobbiesModTGCRare)