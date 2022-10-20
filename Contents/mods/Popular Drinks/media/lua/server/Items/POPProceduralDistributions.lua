
local function getNormalizedValue(value)
    local frequency = 0
    local numberValue = tonumber(value)

    if value > 1 then
        frequency = 0.1 * numberValue
    end

    if frequency > 1 then
        frequency = 1
    end

    return frequency
end


local function getDistributionValue(value, max)
    local valueNumber = value
    return math.floor(value * max)
end

local jetdropdown = 0;
local caciquedropdown = 0;
local flvanilladropdown = 0;
local flstrawberrydropdown = 0;
local flchocolatedropdown = 0;
local irnbrudropdown = 0;
local redbulldropdown = 0;
local jarritosdropdown = 0;
local coronadropdown = 0;
local incakoladropdown = 0;
local ponymaltadropdown = 0;

if ModOptions and ModOptions.getInstance then
    print("POP: Mopdoptions detected in distribution file", POPULARDRINKS.OPTIONS)
    ModOptions:loadFile();
    
    jetdropdown = getNormalizedValue(POPULARDRINKS.OPTIONS.options.jetdropdown);
    caciquedropdown = getNormalizedValue(POPULARDRINKS.OPTIONS.options.caciquedropdown);
    flvanilladropdown = getNormalizedValue(POPULARDRINKS.OPTIONS.options.flvanilladropdown);
    flstrawberrydropdown = getNormalizedValue(POPULARDRINKS.OPTIONS.options.flstrawberrydropdown);
    flchocolatedropdown = getNormalizedValue(POPULARDRINKS.OPTIONS.options.flchocolatedropdown);
    irnbrudropdown = getNormalizedValue(POPULARDRINKS.OPTIONS.options.irnbrudropdown);
    redbulldropdown = getNormalizedValue(POPULARDRINKS.OPTIONS.options.redbulldropdown);
    jarritosdropdown = getNormalizedValue(POPULARDRINKS.OPTIONS.options.jarritosdropdown);
    coronadropdown = getNormalizedValue(POPULARDRINKS.OPTIONS.options.coronadropdown);
    incakoladropdown = getNormalizedValue(POPULARDRINKS.OPTIONS.options.incakoladropdown);
    ponymaltadropdown = getNormalizedValue(POPULARDRINKS.OPTIONS.options.ponymaltadropdown);

    print("POP: Distribution | jetdropdown", jetdropdown);
    print("POP: Distribution | caciquedropdown", caciquedropdown);
    print("POP: Distribution | flvanilladropdown", flvanilladropdown);
    print("POP: Distribution | flstrawberrydropdown", flstrawberrydropdown);
    print("POP: Distribution | flchocolatedropdown", flchocolatedropdown);
    print("POP: Distribution | irnbrudropdown", irnbrudropdown);
    print("POP: Distribution | redbulldropdown", redbulldropdown);
    print("POP: Distribution | jarritosdropdown", jarritosdropdown);
    print("POP: Distribution | coronadropdown", coronadropdown);
    print("POP: Distribution | incakoladropdown", incakoladropdown);
    print("POP: Distribution | ponymaltadropdown", ponymaltadropdown);
end

require 'Items/Distributions'
require "Items/ProceduralDistributions"

-- Fridge Generic
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(jetdropdown, 20));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(irnbrudropdown, 12));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopIncaKola");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(incakoladropdown, 12));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopPonyMalta");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(ponymaltadropdown, 12));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopJarritosTangerine");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopJarritosWatermelon");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopJarritosLime");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopJarritosGuava");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(redbulldropdown, 20));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(flvanilladropdown, 10));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(flstrawberrydropdown, 10));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(flchocolatedropdown, 10));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(caciquedropdown, 6));
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, "PopularDrinks.PopCorona");
table.insert(ProceduralDistributions.list["FridgeGeneric"].items, getDistributionValue(coronadropdown, 6));

-- Locker
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(jetdropdown, 16));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["Locker"].items,  getDistributionValue(irnbrudropdown, 16));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopIncaKola");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(incakoladropdown, 16));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopPonyMalta");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(ponymaltadropdown, 16));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopJarritosTangerine");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(jarritosdropdown, 16));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopJarritosWatermelon");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(jarritosdropdown, 16));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopJarritosLime");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(jarritosdropdown, 16));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopJarritosGuava");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(jarritosdropdown, 16));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(redbulldropdown, 16));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(flvanilladropdown, 10));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(flstrawberrydropdown, 10));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(flchocolatedropdown, 10));
table.insert(ProceduralDistributions.list["Locker"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["Locker"].items, getDistributionValue(caciquedropdown, 4));

-- Bakery Kitchen Fridge
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(jetdropdown, 16));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items,  getDistributionValue(irnbrudropdown, 12));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopIncaKola");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(incakoladropdown, 12));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopPonyMalta");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(ponymaltadropdown, 12));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopJarritosTangerine");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopJarritosWatermelon");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopJarritosLime");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopJarritosGuava");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(redbulldropdown, 12));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(flvanilladropdown, 20));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(flstrawberrydropdown, 20));
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["BakeryKitchenFridge"].items, getDistributionValue(flchocolatedropdown, 20));

-- Cafe Kitchen Fridge
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, getDistributionValue(flvanilladropdown, 16));
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, getDistributionValue(flstrawberrydropdown, 16));
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, getDistributionValue(flchocolatedropdown, 16));
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["CafeKitchenFridge"].items, getDistributionValue(redbulldropdown, 12));

-- Store Kitchen Cafe
table.insert(ProceduralDistributions.list["StoreKitchenCafe"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["StoreKitchenCafe"].items, getDistributionValue(flvanilladropdown, 16));
table.insert(ProceduralDistributions.list["StoreKitchenCafe"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["StoreKitchenCafe"].items, getDistributionValue(flstrawberrydropdown, 16));
table.insert(ProceduralDistributions.list["StoreKitchenCafe"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["StoreKitchenCafe"].items, getDistributionValue(flchocolatedropdown, 16));

-- Cafeteria Drinks
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(jetdropdown, 12));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(redbulldropdown, 12));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(irnbrudropdown, 12));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopIncaKola");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(incakoladropdown, 12));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopPonyMalta");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(ponymaltadropdown, 12));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopJarritosTangerine");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopJarritosWatermelon");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopJarritosLime");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopJarritosGuava");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(flvanilladropdown, 16));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(flstrawberrydropdown, 16));
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["CafeteriaDrinks"].items, getDistributionValue(flchocolatedropdown, 16));

-- Office Desk Home
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(jetdropdown, 8));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(redbulldropdown, 8));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(irnbrudropdown, 8));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopIncaKola");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(incakoladropdown, 8));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopPonyMalta");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(ponymaltadropdown, 8));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopJarritosTangerine");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(jarritosdropdown, 4));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopJarritosWatermelon");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(jarritosdropdown, 4));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopJarritosLime");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(jarritosdropdown, 4));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopJarritosGuava");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(jarritosdropdown, 4));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(flvanilladropdown, 4));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(flstrawberrydropdown, 4));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(flchocolatedropdown, 4));
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "PopularDrinks.PopCorona");
table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, getDistributionValue(coronadropdown, 6));

-- Band Practice Fridge
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(jetdropdown, 16));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(redbulldropdown, 16));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(irnbrudropdown, 12));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopIncaKola");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(incakoladropdown, 12));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopPonyMalta");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(ponymaltadropdown, 12));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopJarritosTangerine");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(jarritosdropdown, 6));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopJarritosWatermelon");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(jarritosdropdown, 6));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopJarritosLime");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(jarritosdropdown, 6));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopJarritosGuava");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(jarritosdropdown, 6));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(flvanilladropdown, 8));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(flstrawberrydropdown, 8));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(flchocolatedropdown, 8));
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, "PopularDrinks.PopCorona");
table.insert(ProceduralDistributions.list["BandPracticeFridge"].items, getDistributionValue(coronadropdown, 6));

-- Store Shelf Combo
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(jetdropdown, 15));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(redbulldropdown, 7));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(irnbrudropdown, 7));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopIncaKola");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(incakoladropdown, 7));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopPonyMalta");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(ponymaltadropdown, 7));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopJarritosTangerine");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(jarritosdropdown, 6));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopJarritosWatermelon");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(jarritosdropdown, 6));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopJarritosLime");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(jarritosdropdown, 6));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopJarritosGuava");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(jarritosdropdown, 6));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(flvanilladropdown, 8));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(flstrawberrydropdown, 8));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(flchocolatedropdown, 8));
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["StoreShelfCombo"].items, getDistributionValue(caciquedropdown, 8));

-- Store Shelf Drinks
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(jetdropdown, 20));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(redbulldropdown, 16));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(irnbrudropdown, 16));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopIncaKola");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(incakoladropdown, 16));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopPonyMalta");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(ponymaltadropdown, 16));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopJarritosTangerine");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopJarritosWatermelon");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopJarritosLime");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopJarritosGuava");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(jarritosdropdown, 12));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(flvanilladropdown, 20));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(flstrawberrydropdown, 20));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(flchocolatedropdown, 20));
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["StoreShelfDrinks"].items, getDistributionValue(caciquedropdown, 6));

-- Store Shelf Whiskey
table.insert(ProceduralDistributions.list["StoreShelfWhiskey"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["StoreShelfWhiskey"].items, getDistributionValue(caciquedropdown, 12));

-- Kitchen Random
table.insert(ProceduralDistributions.list["KitchenRandom"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["KitchenRandom"].items, getDistributionValue(caciquedropdown, 4));

-- Gigamart Bottles
table.insert(ProceduralDistributions.list["GigamartBottles"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["GigamartBottles"].items, getDistributionValue(jetdropdown, 15));
table.insert(ProceduralDistributions.list["GigamartBottles"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["GigamartBottles"].items, getDistributionValue(flvanilladropdown, 16));
table.insert(ProceduralDistributions.list["GigamartBottles"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["GigamartBottles"].items, getDistributionValue(flstrawberrydropdown, 16));
table.insert(ProceduralDistributions.list["GigamartBottles"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["GigamartBottles"].items, getDistributionValue(flchocolatedropdown, 16));
table.insert(ProceduralDistributions.list["GigamartBottles"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["GigamartBottles"].items, getDistributionValue(caciquedropdown, 6));

-- Fridge Other
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(jetdropdown, 14));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(redbulldropdown, 20));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(irnbrudropdown, 16));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopIncaKola");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(incakoladropdown, 16));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopPonyMalta");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(ponymaltadropdown, 16));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopJarritosTangerine");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(jarritosdropdown, 4));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopJarritosWatermelon");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(jarritosdropdown, 4));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopJarritosLime");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(jarritosdropdown, 4));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopJarritosGuava");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(jarritosdropdown, 4));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(flvanilladropdown, 12));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(flstrawberrydropdown, 12));
table.insert(ProceduralDistributions.list["FridgeOther"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["FridgeOther"].items, getDistributionValue(flchocolatedropdown, 12));

-- Fridge Break Room
table.insert(ProceduralDistributions.list["FridgeBreakRoom"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["FridgeBreakRoom"].items, getDistributionValue(flvanilladropdown, 20));
table.insert(ProceduralDistributions.list["FridgeBreakRoom"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["FridgeBreakRoom"].items, getDistributionValue(flstrawberrydropdown, 20));
table.insert(ProceduralDistributions.list["FridgeBreakRoom"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["FridgeBreakRoom"].items, getDistributionValue(flchocolatedropdown, 20));

-- Diner Kitchen Fridge
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, getDistributionValue(jetdropdown, 20));
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, getDistributionValue(redbulldropdown, 7));
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, getDistributionValue(flvanilladropdown, 7));
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, getDistributionValue(flstrawberrydropdown, 7));
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(ProceduralDistributions.list["DinerKitchenFridge"].items, getDistributionValue(flchocolatedropdown, 7));

-- Crate Soda Bottles
table.insert(ProceduralDistributions.list["CrateSodaBottles"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["CrateSodaBottles"].items, getDistributionValue(jetdropdown, 20));

-- Gas Storage Combo
table.insert(ProceduralDistributions.list["GasStorageCombo"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["GasStorageCombo"].items, getDistributionValue(jetdropdown, 20));
table.insert(ProceduralDistributions.list["GasStorageCombo"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["GasStorageCombo"].items, getDistributionValue(redbulldropdown, 10));

-- Fridge Soda
table.insert(ProceduralDistributions.list["FridgeSoda"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["FridgeSoda"].items, getDistributionValue(jetdropdown, 20));
table.insert(ProceduralDistributions.list["FridgeSoda"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["FridgeSoda"].items, getDistributionValue(irnbrudropdown, 12));
table.insert(ProceduralDistributions.list["FridgeSoda"].items, "PopularDrinks.PopIncaKola");
table.insert(ProceduralDistributions.list["FridgeSoda"].items, getDistributionValue(incakoladropdown, 12));
table.insert(ProceduralDistributions.list["FridgeSoda"].items, "PopularDrinks.PopPonyMalta");
table.insert(ProceduralDistributions.list["FridgeSoda"].items, getDistributionValue(ponymaltadropdown, 12));
table.insert(ProceduralDistributions.list["FridgeSoda"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["FridgeSoda"].items, getDistributionValue(redbulldropdown, 12));

-- Kitchen Bottles
table.insert(ProceduralDistributions.list["KitchenBottles"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["KitchenBottles"].items, getDistributionValue(jetdropdown, 20));
table.insert(ProceduralDistributions.list["KitchenBottles"].items, "PopularDrinks.PopCorona");
table.insert(ProceduralDistributions.list["KitchenBottles"].items, getDistributionValue(coronadropdown, 6));

-- Fridge Bottles
table.insert(ProceduralDistributions.list["FridgeBottles"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["FridgeBottles"].items, getDistributionValue(jetdropdown, 20));

-- Fridge Rich
table.insert(ProceduralDistributions.list["FridgeRich"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["FridgeRich"].items, getDistributionValue(caciquedropdown, 8));
table.insert(ProceduralDistributions.list["FridgeRich"].items, "PopularDrinks.PopCorona");
table.insert(ProceduralDistributions.list["FridgeRich"].items, getDistributionValue(coronadropdown, 6));

-- Fridge Trailer Park
table.insert(ProceduralDistributions.list["FridgeTrailerPark"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["FridgeTrailerPark"].items, getDistributionValue(caciquedropdown, 9));

-- Spiffos Dining Counter
table.insert(ProceduralDistributions.list["SpiffosDiningCounter"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["SpiffosDiningCounter"].items, getDistributionValue(jetdropdown, 20));
table.insert(ProceduralDistributions.list["SpiffosDiningCounter"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["SpiffosDiningCounter"].items, getDistributionValue(redbulldropdown, 12));

-- Bar Counter Misc
table.insert(ProceduralDistributions.list["BarCounterMisc"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["BarCounterMisc"].items, getDistributionValue(jetdropdown, 16));
table.insert(ProceduralDistributions.list["BarCounterMisc"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["BarCounterMisc"].items, getDistributionValue(redbulldropdown, 16));
table.insert(ProceduralDistributions.list["BarCounterMisc"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["BarCounterMisc"].items, getDistributionValue(caciquedropdown, 16));
table.insert(ProceduralDistributions.list["BarCounterMisc"].items, "PopularDrinks.PopCorona");
table.insert(ProceduralDistributions.list["BarCounterMisc"].items, getDistributionValue(coronadropdown, 6));

-- Store Shelf Beer
table.insert(ProceduralDistributions.list["StoreShelfBeer"].items, "PopularDrinks.PopCorona");
table.insert(ProceduralDistributions.list["StoreShelfBeer"].items, getDistributionValue(coronadropdown, 16));

-- Bar Counter Weapon
table.insert(ProceduralDistributions.list["BarCounterWeapon"].items, "PopularDrinks.PopCorona");
table.insert(ProceduralDistributions.list["BarCounterWeapon"].items, getDistributionValue(coronadropdown, 10));

-- Brewery Bottles
table.insert(ProceduralDistributions.list["BreweryBottles"].items, "PopularDrinks.PopCorona");
table.insert(ProceduralDistributions.list["BreweryBottles"].items, getDistributionValue(coronadropdown, 15));

-- Drug Shack Drugs
table.insert(ProceduralDistributions.list["DrugShackDrugs"].items, "PopularDrinks.PopCorona");
table.insert(ProceduralDistributions.list["DrugShackDrugs"].items, getDistributionValue(coronadropdown, 15));

-- Fridge Beer
table.insert(ProceduralDistributions.list["FridgeBeer"].items, "PopularDrinks.PopCorona");
table.insert(ProceduralDistributions.list["FridgeBeer"].items, getDistributionValue(coronadropdown, 18));

-- Bar Counter Liquor
table.insert(ProceduralDistributions.list["BarCounterLiquor"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["BarCounterLiquor"].items, getDistributionValue(caciquedropdown, 16));
table.insert(ProceduralDistributions.list["BarCounterLiquor"].items, "PopularDrinks.PopCorona");
table.insert(ProceduralDistributions.list["BarCounterLiquor"].items, getDistributionValue(coronadropdown, 16));

-- Bar Shelf Liquor
table.insert(ProceduralDistributions.list["BarShelfLiquor"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["BarShelfLiquor"].items, getDistributionValue(caciquedropdown, 16));
table.insert(ProceduralDistributions.list["BarCounterLiquor"].items, "PopularDrinks.PopCorona");
table.insert(ProceduralDistributions.list["BarCounterLiquor"].items, getDistributionValue(coronadropdown, 16));

-- Bar Crate Pool
table.insert(ProceduralDistributions.list["BarCratePool"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["BarCratePool"].items, getDistributionValue(caciquedropdown, 16));

-- Motel Fridge
table.insert(ProceduralDistributions.list["MotelFridge"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(ProceduralDistributions.list["MotelFridge"].items, getDistributionValue(jetdropdown, 20));
table.insert(ProceduralDistributions.list["MotelFridge"].items, "PopularDrinks.PopRedBull");
table.insert(ProceduralDistributions.list["MotelFridge"].items, getDistributionValue(redbulldropdown, 16));
table.insert(ProceduralDistributions.list["MotelFridge"].items, "PopularDrinks.PopIrnBru");
table.insert(ProceduralDistributions.list["MotelFridge"].items, getDistributionValue(irnbrudropdown, 16));
table.insert(ProceduralDistributions.list["MotelFridge"].items, "PopularDrinks.PopIncaKola");
table.insert(ProceduralDistributions.list["MotelFridge"].items, getDistributionValue(incakoladropdown, 16));
table.insert(ProceduralDistributions.list["MotelFridge"].items, "PopularDrinks.PopPonyMalta");
table.insert(ProceduralDistributions.list["MotelFridge"].items, getDistributionValue(ponymaltadropdown, 16));

-- Whiskey Bottling
table.insert(ProceduralDistributions.list["WhiskeyBottlingFull"].items, "PopularDrinks.PopCacique");
table.insert(ProceduralDistributions.list["WhiskeyBottlingFull"].items, getDistributionValue(caciquedropdown, 20));

-- Vending Pop
table.insert(SuburbsDistributions["all"]["vendingpop"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(SuburbsDistributions["all"]["vendingpop"].items, getDistributionValue(jetdropdown, 10));
table.insert(SuburbsDistributions["all"]["vendingpop"].items, "PopularDrinks.PopRedBull");
table.insert(SuburbsDistributions["all"]["vendingpop"].items, getDistributionValue(redbulldropdown, 10));
table.insert(SuburbsDistributions["all"]["vendingpop"].items, "PopularDrinks.PopIrnBru");
table.insert(SuburbsDistributions["all"]["vendingpop"].items, getDistributionValue(irnbrudropdown, 6));
table.insert(SuburbsDistributions["all"]["vendingpop"].items, "PopularDrinks.PopIncaKola");
table.insert(SuburbsDistributions["all"]["vendingpop"].items, getDistributionValue(incakoladropdown, 6));
table.insert(SuburbsDistributions["all"]["vendingpop"].items, "PopularDrinks.PopPonyMalta");
table.insert(SuburbsDistributions["all"]["vendingpop"].items, getDistributionValue(ponymaltadropdown, 6));
table.insert(SuburbsDistributions["all"]["vendingpop"].items, "PopularDrinks.PopJarritosTangerine");
table.insert(SuburbsDistributions["all"]["vendingpop"].items, getDistributionValue(jarritosdropdown, 6));
table.insert(SuburbsDistributions["all"]["vendingpop"].items, "PopularDrinks.PopJarritosWatermelon");
table.insert(SuburbsDistributions["all"]["vendingpop"].items, getDistributionValue(jarritosdropdown, 6));
table.insert(SuburbsDistributions["all"]["vendingpop"].items, "PopularDrinks.PopJarritosLime");
table.insert(SuburbsDistributions["all"]["vendingpop"].items, getDistributionValue(jarritosdropdown, 6));
table.insert(SuburbsDistributions["all"]["vendingpop"].items, "PopularDrinks.PopJarritosGuava");
table.insert(SuburbsDistributions["all"]["vendingpop"].items, getDistributionValue(jarritosdropdown, 6));

-- Inventory Male
table.insert(SuburbsDistributions["all"]["inventorymale"].items, "PopularDrinks.PopJetEnergyDrink");
table.insert(SuburbsDistributions["all"]["inventorymale"].items, getDistributionValue(jetdropdown, 7));
table.insert(SuburbsDistributions["all"]["inventorymale"].items, "PopularDrinks.PopCacique");
table.insert(SuburbsDistributions["all"]["inventorymale"].items, getDistributionValue(caciquedropdown, 1));
table.insert(SuburbsDistributions["all"]["inventorymale"].items, "PopularDrinks.PopIrnBru");
table.insert(SuburbsDistributions["all"]["inventorymale"].items, getDistributionValue(irnbrudropdown, 8));
table.insert(SuburbsDistributions["all"]["inventorymale"].items, "PopularDrinks.PopIncaKola");
table.insert(SuburbsDistributions["all"]["inventorymale"].items, getDistributionValue(incakoladropdown, 6));
table.insert(SuburbsDistributions["all"]["inventorymale"].items, "PopularDrinks.PopPonyMalta");
table.insert(SuburbsDistributions["all"]["inventorymale"].items, getDistributionValue(ponymaltadropdown, 6));

-- Inventory Female
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, "PopularDrinks.PopFrescolecheVanillaBox");
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, getDistributionValue(flvanilladropdown, 12));
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, "PopularDrinks.PopFrescolecheStrawberryBox");
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, getDistributionValue(flstrawberrydropdown, 12));
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, "PopularDrinks.PopFrescolecheChocolateBox");
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, getDistributionValue(flchocolatedropdown, 12));
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, "PopularDrinks.PopCacique");
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, getDistributionValue(caciquedropdown, 1));
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, "PopularDrinks.PopPonyMalta");
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, getDistributionValue(ponymaltadropdown, 3));

-- Motel Room Occupied
table.insert(SuburbsDistributions["motelroomoccupied"]["sidetable"].items, "PopularDrinks.PopCacique");
table.insert(SuburbsDistributions["motelroomoccupied"]["sidetable"].items, getDistributionValue(caciquedropdown, 4));
