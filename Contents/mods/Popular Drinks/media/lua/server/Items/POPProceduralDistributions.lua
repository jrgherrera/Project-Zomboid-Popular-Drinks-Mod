local config = POPULARDRINKS.CONFIG

Events.OnGameStart.Add(function()
    if not isClient() then
        print("jetdropdown = ", config.jetdropdown)
        print("caciquedropdown = ", config.caciquedropdown)
        print("flvanilladropdown = ", config.flvanilladropdown)
        print("flstrawberrydropdown = ", config.flstrawberrydropdown)
        print("flchocolatedropdown = ", config.flchocolatedropdown)
    end
end)


local function getDistributionValue(value, max)
    return math.floor(value * max)
end

require 'Items/Distributions'
require "Items/ProceduralDistributions"

-- Fridge Generic
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(config.jetdropdown, 40));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(config.irnbrudropdown, 30));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(config.redbulldropdown, 40));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(config.flvanilladropdown, 20));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(config.flstrawberrydropdown, 20));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(config.flchocolatedropdown, 20));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(config.caciquedropdown, 5));

-- Locker
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(config.jetdropdown, 20));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["Locker"].items,  getDistributionValue(config.irnbrudropdown, 20));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(config.redbulldropdown, 20));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(config.flvanilladropdown, 10));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(config.flstrawberrydropdown, 10));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(config.flchocolatedropdown, 10));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(config.caciquedropdown, 5));

-- Bakery Kitchen Fridge
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(config.jetdropdown, 20));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items,  getDistributionValue(config.irnbrudropdown, 16));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(config.redbulldropdown, 16));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(config.flvanilladropdown, 30));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(config.flstrawberrydropdown, 30));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(config.flchocolatedropdown, 30));

-- Cafe Kitchen Fridge
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, getDistributionValue(config.flvanilladropdown, 24));
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, getDistributionValue(config.flstrawberrydropdown, 30));
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, getDistributionValue(config.flchocolatedropdown, 30));
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, getDistributionValue(config.redbulldropdown, 20));

-- Store Kitchen Cafe
table.insert(ProceduralDistributions.list["StoreKitchenCafe"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["StoreKitchenCafe"].items, getDistributionValue(config.flvanilladropdown, 30));
table.insert(ProceduralDistributions.list["StoreKitchenCafe"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["StoreKitchenCafe"].items, getDistributionValue(config.flstrawberrydropdown, 30));
table.insert(ProceduralDistributions.list["StoreKitchenCafe"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["StoreKitchenCafe"].items, getDistributionValue(config.flchocolatedropdown, 30));

-- Cafeteria Drinks
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(config.jetdropdown, 20));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(config.redbulldropdown, 20));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(config.irnbrudropdown, 20));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(config.flvanilladropdown, 40));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(config.flstrawberrydropdown, 40));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(config.flchocolatedropdown, 40));

-- Office Desk Home
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(config.jetdropdown, 10));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(config.redbulldropdown, 10));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(config.irnbrudropdown, 10));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(config.flvanilladropdown, 5));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(config.flstrawberrydropdown, 5));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(config.flchocolatedropdown, 5));

-- Band Practice Fridge
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(config.jetdropdown, 20));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(config.redbulldropdown, 20));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(config.irnbrudropdown, 16));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(config.flvanilladropdown, 10));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(config.flstrawberrydropdown, 10));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(config.flchocolatedropdown, 10));

-- Store Shelf Combo
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(config.jetdropdown, 40));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(config.redbulldropdown, 24));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(config.irnbrudropdown, 24));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(config.flvanilladropdown, 10));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(config.flstrawberrydropdown, 10));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(config.flchocolatedropdown, 10));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(config.caciquedropdown, 10));

-- Store Shelf Drinks
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(config.jetdropdown, 30));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(config.redbulldropdown, 20));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(config.irnbrudropdown, 20));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(config.flvanilladropdown, 30));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(config.flstrawberrydropdown, 30));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(config.flchocolatedropdown, 30));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(config.caciquedropdown, 10));

-- Store Shelf Whiskey
table.insert(ProceduralDistributions.list["StoreShelfWhiskey"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["StoreShelfWhiskey"].items, getDistributionValue(config.caciquedropdown, 50));

-- Kitchen Random
table.insert(ProceduralDistributions.list["KitchenRandom"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["KitchenRandom"].items, getDistributionValue(config.caciquedropdown, 10));

-- Gigamart Bottles
table.insert(ProceduralDistributions.list["GigamartBottles"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["GigamartBottles"].items, getDistributionValue(config.jetdropdown, 40));
table.insert(ProceduralDistributions.list["GigamartBottles"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["GigamartBottles"].items, getDistributionValue(config.flvanilladropdown, 20));
table.insert(ProceduralDistributions.list["GigamartBottles"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["GigamartBottles"].items, getDistributionValue(config.flstrawberrydropdown, 20));
table.insert(ProceduralDistributions.list["GigamartBottles"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["GigamartBottles"].items, getDistributionValue(config.flchocolatedropdown, 20));
table.insert(ProceduralDistributions.list["GigamartBottles"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["GigamartBottles"].items, getDistributionValue(config.caciquedropdown, 10));

-- Fridge Other
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(config.jetdropdown, 50));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(config.redbulldropdown, 30));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(config.irnbrudropdown, 20));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(config.flvanilladropdown, 50));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(config.flstrawberrydropdown, 50));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(config.flchocolatedropdown, 50));

-- Fridge Break Room
table.insert(ProceduralDistributions.list["FridgeBreakRoom"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["FridgeBreakRoom"].items, getDistributionValue(config.flvanilladropdown, 30));
table.insert(ProceduralDistributions.list["FridgeBreakRoom"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["FridgeBreakRoom"].items, getDistributionValue(config.flstrawberrydropdown, 30));
table.insert(ProceduralDistributions.list["FridgeBreakRoom"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["FridgeBreakRoom"].items, getDistributionValue(config.flchocolatedropdown, 30));

-- Diner Kitchen Fridge
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, getDistributionValue(config.jetdropdown, 50));
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, getDistributionValue(config.redbulldropdown, 30));
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, getDistributionValue(config.flvanilladropdown, 30));
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, getDistributionValue(config.flstrawberrydropdown, 30));
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, getDistributionValue(config.flchocolatedropdown, 30));

-- Crate Soda Bottles
table.insert(ProceduralDistributions.list["CrateSodaBottles"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["CrateSodaBottles"].items, getDistributionValue(config.jetdropdown, 40));

-- Gas Storage Combo
table.insert(ProceduralDistributions.list["GasStorageCombo"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["GasStorageCombo"].items, getDistributionValue(config.jetdropdown, 40));
table.insert(ProceduralDistributions.list["GasStorageCombo"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["GasStorageCombo"].items, getDistributionValue(config.redbulldropdown, 20));

-- Fridge Soda
table.insert(ProceduralDistributions.list["FridgeSoda"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["FridgeSoda"].items, getDistributionValue(config.jetdropdown, 40));
table.insert(ProceduralDistributions.list["FridgeSoda"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["FridgeSoda"].items, getDistributionValue(config.irnbrudropdown, 20));
table.insert(ProceduralDistributions.list["FridgeSoda"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["FridgeSoda"].items, getDistributionValue(config.redbulldropdown, 20));

-- Kitchen Bottles
table.insert(ProceduralDistributions.list["KitchenBottles"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["KitchenBottles"].items, getDistributionValue(config.jetdropdown, 40));

-- Fridge Bottles
table.insert(ProceduralDistributions.list["FridgeBottles"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["FridgeBottles"].items, getDistributionValue(config.jetdropdown, 40));

-- Spiffos Dining Counter
table.insert(ProceduralDistributions.list["SpiffosDiningCounter"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["SpiffosDiningCounter"].items, getDistributionValue(config.jetdropdown, 40));
table.insert(ProceduralDistributions.list["SpiffosDiningCounter"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["SpiffosDiningCounter"].items, getDistributionValue(config.redbulldropdown, 50));

-- Bar Counter Misc
table.insert(ProceduralDistributions.list["BarCounterMisc"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["BarCounterMisc"].items, getDistributionValue(config.jetdropdown, 20));
table.insert(ProceduralDistributions.list["BarCounterMisc"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["BarCounterMisc"].items, getDistributionValue(config.redbulldropdown, 20));
table.insert(ProceduralDistributions.list["BarCounterMisc"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["BarCounterMisc"].items, getDistributionValue(config.caciquedropdown, 20));

-- Bar Counter Liquor
table.insert(ProceduralDistributions.list["BarCounterLiquor"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["BarCounterLiquor"].items, getDistributionValue(config.caciquedropdown, 20));

-- Bar Shelf Liquor
table.insert(ProceduralDistributions.list["BarShelfLiquor"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["BarShelfLiquor"].items, getDistributionValue(config.caciquedropdown, 20));

-- Bar Crate Pool
table.insert(ProceduralDistributions.list["BarCratePool"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["BarCratePool"].items, getDistributionValue(config.caciquedropdown, 20));

-- Motel Fridge
table.insert(ProceduralDistributions.list["MotelFridge"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["MotelFridge"].items, getDistributionValue(config.jetdropdown, 40));
table.insert(ProceduralDistributions.list["MotelFridge"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["MotelFridge"].items, getDistributionValue(config.redbulldropdown, 20));
table.insert(ProceduralDistributions.list["MotelFridge"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["MotelFridge"].items, getDistributionValue(config.irnbrudropdown, 20));

-- Whiskey Bottling
table.insert(ProceduralDistributions.list["WhiskeyBottlingFull"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["WhiskeyBottlingFull"].items, getDistributionValue(config.caciquedropdown, 40));

-- Vending Pop
table.insert(SuburbsDistributions["all"]["vendingpop"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(SuburbsDistributions["all"]["vendingpop"].items, getDistributionValue(config.jetdropdown, 40));
table.insert(SuburbsDistributions["all"]["vendingpop"].items, "PopularDrinks.PopRedBull");
table.insert(SuburbsDistributions["all"]["vendingpop"].items, getDistributionValue(config.redbulldropdown, 40));
table.insert(SuburbsDistributions["all"]["vendingpop"].items, "PopularDrinks.PopIrnBru");
table.insert(SuburbsDistributions["all"]["vendingpop"].items, getDistributionValue(config.irnbrudropdown, 20));

-- Inventory Male
table.insert(SuburbsDistributions["all"]["inventorymale"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(SuburbsDistributions["all"]["inventorymale"].items, getDistributionValue(config.jetdropdown, 20));
table.insert(SuburbsDistributions["all"]["inventorymale"].items, "PopularDrinks.PopCacique");
table.insert(SuburbsDistributions["all"]["inventorymale"].items, getDistributionValue(config.caciquedropdown, 5));
table.insert(SuburbsDistributions["all"]["inventorymale"].items, "PopularDrinks.PopIrnBru");
table.insert(SuburbsDistributions["all"]["inventorymale"].items, getDistributionValue(config.irnbrudropdown, 10));

-- Inventory Female
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, getDistributionValue(config.flvanilladropdown, 20));
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, getDistributionValue(config.flstrawberrydropdown, 20));
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, getDistributionValue(config.flchocolatedropdown, 20));
table.insert(SuburbsDistributions["all"]["inventorymale"].items, "PopularDrinks.PopCacique");
table.insert(SuburbsDistributions["all"]["inventorymale"].items, getDistributionValue(config.caciquedropdown, 5));

-- Motel Room Occupied
table.insert(SuburbsDistributions["motelroomoccupied"]["sidetable"].items, "PopularDrinks.PopCacique");
table.insert(SuburbsDistributions["motelroomoccupied"]["sidetable"].items, getDistributionValue(config.caciquedropdown, 10));
