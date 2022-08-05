local config = {};

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

local function getNormalizedValue(value)
    local frequency = 0

    if value > 1 then
        frequency = 0.16666666666666668 * value
    end

    if frequency > 1 then
        frequency = 1
    end

    return frequency

end

local function setupConfig()
    config.jetdropdown = getNormalizedValue(tonumber(SETTINGS.options.jetdropdown));
    config.caciquedropdown = getNormalizedValue(tonumber(SETTINGS.options.caciquedropdown));
    config.flvanilladropdown = getNormalizedValue(tonumber(SETTINGS.options.flvanilladropdown));
    config.flstrawberrydropdown = getNormalizedValue(tonumber(SETTINGS.options.flstrawberrydropdown));
    config.flchocolatedropdown = getNormalizedValue(tonumber(SETTINGS.options.flchocolatedropdown));
    config.irnbrudropdown = getNormalizedValue(tonumber(SETTINGS.options.irnbrudropdown));
    config.redbulldropdown = getNormalizedValue(tonumber(SETTINGS.options.redbulldropdown));
end

local function triggerConfigLoad()
    if ModOptions and ModOptions.getInstance then
        print("POP - ModOptions is avaliable - trying to load the data");
        local settings = ModOptions:getInstance(SETTINGS);

        function settings:OnApply()
            setupConfig();
        end

        ModOptions:loadFile();

        setupConfig();

    end
end

triggerConfigLoad();

config.triggerConfigLoad = triggerConfigLoad;

POPULARDRINKS = {}
POPULARDRINKS.CONFIG = config;

return config;