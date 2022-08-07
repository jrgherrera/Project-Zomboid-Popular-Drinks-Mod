local SETTINGS = {
    options_data = {
        jetdropdown = {
            "0%",
            "15%",
            "30%",
            "50%",
            "70%",
            "90%",
            "99%",
            name = "IGUI_POP_Jet",
            tooltip = "IGUI_POP_tooltip",
            default = 4,
            OnApplyInGame= OnApply
        },
        caciquedropdown = {
            "0%",
            "15%",
            "30%",
            "50%",
            "70%",
            "90%",
            "99%",
            name = "IGUI_POP_Cacique",
            tooltip = "IGUI_POP_tooltip",
            default = 4,
            OnApplyInGame= OnApply
        },
        flvanilladropdown = {
            "0%",
            "15%",
            "30%",
            "50%",
            "70%",
            "90%",
            "99%",
            name = "IGUI_POP_FLVanilla",
            tooltip = "IGUI_POP_tooltip",
            default = 4,
            OnApplyInGame= OnApply
        },
        flstrawberrydropdown = {
            "0%",
            "15%",
            "30%",
            "50%",
            "70%",
            "90%",
            "99%",
            name = "IGUI_POP_FLStrawberry",
            tooltip = "IGUI_POP_tooltip",
            default = 4,
            OnApplyInGame= OnApply
        },
        flchocolatedropdown = {
            "0%",
            "15%",
            "30%",
            "50%",
            "70%",
            "90%",
            "99%",
            name = "IGUI_POP_FLChocolate",
            tooltip = "IGUI_POP_tooltip",
            default = 4,
            OnApplyInGame= OnApply
        },
        irnbrudropdown = {
            "0%",
            "15%",
            "30%",
            "50%",
            "70%",
            "90%",
            "99%",
            name = "IGUI_POP_IrnBru",
            tooltip = "IGUI_POP_tooltip",
            default = 4,
            OnApplyInGame= OnApply
        },
        redbulldropdown = {
            "0%",
            "15%",
            "30%",
            "50%",
            "70%",
            "90%",
            "99%",
            name = "IGUI_POP_Redbull",
            tooltip = "IGUI_POP_tooltip",
            default = 4,
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

    if isClient() then
        jetdropdown.sandbox_path = "worldoptions";
        caciquedropdown.sandbox_path = "worldoptions";
        flvanilladropdown.sandbox_path = "worldoptions";
        flstrawberrydropdown.sandbox_path = "worldoptions";
        flchocolatedropdown.sandbox_path = "worldoptions";
        irnbrudropdown.sandbox_path = "worldoptions";
        redbulldropdown.sandbox_path = "worldoptions";
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

    POPULARDRINKS = {}
    POPULARDRINKS.OPTIONS = SETTINGS;

end