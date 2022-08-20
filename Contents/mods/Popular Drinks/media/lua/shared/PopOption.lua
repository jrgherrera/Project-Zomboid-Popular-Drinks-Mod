local SETTINGS = {
    options_data = {
        jetdropdown = {
            "REMOVE",
            "10%",
            "20%",
            "30%",
            "40%",
            "50%",
            "60%",
            "70%",
            "80%",
            "90%",
            "99%",
            name = "IGUI_POP_Jet",
            tooltip = "IGUI_POP_tooltip",
            default = 6,
            OnApplyInGame= OnApply
        },
        caciquedropdown = {
            "REMOVE",
            "10%",
            "20%",
            "30%",
            "40%",
            "50%",
            "60%",
            "70%",
            "80%",
            "90%",
            "99%",
            name = "IGUI_POP_Cacique",
            tooltip = "IGUI_POP_tooltip",
            default = 6,
            OnApplyInGame= OnApply
        },
        flvanilladropdown = {
            "REMOVE",
            "10%",
            "20%",
            "30%",
            "40%",
            "50%",
            "60%",
            "70%",
            "80%",
            "90%",
            "99%",
            name = "IGUI_POP_FLVanilla",
            tooltip = "IGUI_POP_tooltip",
            default = 6,
            OnApplyInGame= OnApply
        },
        flstrawberrydropdown = {
            "REMOVE",
            "10%",
            "20%",
            "30%",
            "40%",
            "50%",
            "60%",
            "70%",
            "80%",
            "90%",
            "99%",
            name = "IGUI_POP_FLStrawberry",
            tooltip = "IGUI_POP_tooltip",
            default = 6,
            OnApplyInGame= OnApply
        },
        flchocolatedropdown = {
            "REMOVE",
            "10%",
            "20%",
            "30%",
            "40%",
            "50%",
            "60%",
            "70%",
            "80%",
            "90%",
            "99%",
            name = "IGUI_POP_FLChocolate",
            tooltip = "IGUI_POP_tooltip",
            default = 6,
            OnApplyInGame= OnApply
        },
        irnbrudropdown = {
            "REMOVE",
            "10%",
            "20%",
            "30%",
            "40%",
            "50%",
            "60%",
            "70%",
            "80%",
            "90%",
            "99%",
            name = "IGUI_POP_IrnBru",
            tooltip = "IGUI_POP_tooltip",
            default = 6,
            OnApplyInGame= OnApply
        },
        redbulldropdown = {
            "REMOVE",
            "10%",
            "20%",
            "30%",
            "40%",
            "50%",
            "60%",
            "70%",
            "80%",
            "90%",
            "99%",
            name = "IGUI_POP_Redbull",
            tooltip = "IGUI_POP_tooltip",
            default = 6,
            OnApplyInGame= OnApply
        },
        jarritosdropdown = {
            "REMOVE",
            "10%",
            "20%",
            "30%",
            "40%",
            "50%",
            "60%",
            "70%",
            "80%",
            "90%",
            "99%",
            name = "IGUI_POP_Jarritos",
            tooltip = "IGUI_POP_tooltip",
            default = 6,
            OnApplyInGame= OnApply
        },
        coronadropdown = {
            "REMOVE",
            "10%",
            "20%",
            "30%",
            "40%",
            "50%",
            "60%",
            "70%",
            "80%",
            "90%",
            "99%",
            name = "IGUI_POP_Corona",
            tooltip = "IGUI_POP_tooltip",
            default = 6,
            OnApplyInGame= OnApply
        },
    },
    mod_id = "PopularDrinks",
    mod_shortname= "Popular Drinks",
}

if ModOptions and ModOptions.getInstance then
    print("POP: ModOptions is avaliable - trying to load the data");
    local settings = ModOptions:getInstance(SETTINGS);

    local jetdropdown = settings:getData("jetdropdown");
    local caciquedropdown = settings:getData("caciquedropdown");
    local flvanilladropdown = settings:getData("flvanilladropdown");
    local flstrawberrydropdown = settings:getData("flstrawberrydropdown");
    local flchocolatedropdown = settings:getData("flchocolatedropdown");
    local irnbrudropdown = settings:getData("irnbrudropdown");
    local redbulldropdown = settings:getData("redbulldropdown");
    local jarritosdropdown = settings:getData("jarritosdropdown");
    local coronadropdown = settings:getData("coronadropdown");

    if isClient() then
        jetdropdown.sandbox_path = "worldoptions";
        caciquedropdown.sandbox_path = "worldoptions";
        flvanilladropdown.sandbox_path = "worldoptions";
        flstrawberrydropdown.sandbox_path = "worldoptions";
        flchocolatedropdown.sandbox_path = "worldoptions";
        irnbrudropdown.sandbox_path = "worldoptions";
        redbulldropdown.sandbox_path = "worldoptions";
        jarritosdropdown.sandbox_path = "worldoptions";
        coronadropdown.sandbox_path = "worldoptions";
    end

    function jetdropdown:OnApplyInGame(val)
        print("POP: Option is updated", self.id, val)
    end

    function caciquedropdown:OnApplyInGame(val)
        print("POP: Option is updated", self.id, val)
    end

    function flvanilladropdown:OnApplyInGame(val)
        print("POP: Option is updated", self.id, val)
    end

    function flstrawberrydropdown:OnApplyInGame(val)
        print("POP: Option is updated", self.id, val)
    end

    function flchocolatedropdown:OnApplyInGame(val)
        print("POP: Option is updated", self.id, val)
    end

    function irnbrudropdown:OnApplyInGame(val)
        print("POP: Option is updated", self.id, val)
    end

    function redbulldropdown:OnApplyInGame(val)
        print("POP: Option is updated", self.id, val)
    end

    function jarritosdropdown:OnApplyInGame(val)
        print("POP: Option is updated", self.id, val)
    end

    function coronadropdown:OnApplyInGame(val)
        print("POP: Option is updated", self.id, val)
    end

    POPULARDRINKS = {}
    POPULARDRINKS.OPTIONS = SETTINGS;

end