local OPTIONS = POPULARDRINKS.OPTIONS

-- Check actual options at game loading.
Events.OnGameStart.Add(function()
    if not isClient() then -- only host may take these options
        print("POP: SERVER DIRECTORY OPTIONS LOADED")
        
        print("POP: jetdropdown", POPULARDRINKS.OPTIONS.options.jetdropdown);
        print("POP: caciquedropdown", POPULARDRINKS.OPTIONS.options.caciquedropdown);
        print("POP: flvanilladropdown", POPULARDRINKS.OPTIONS.options.flvanilladropdown);
        print("POP: flstrawberrydropdown", POPULARDRINKS.OPTIONS.options.flstrawberrydropdown);
        print("POP: flchocolatedropdown", POPULARDRINKS.OPTIONS.options.flchocolatedropdown);
        print("POP: irnbrudropdown", POPULARDRINKS.OPTIONS.options.irnbrudropdown);
        print("POP: redbulldropdown", POPULARDRINKS.OPTIONS.options.redbulldropdown);
        print("POP: jarritos", POPULARDRINKS.OPTIONS.options.jarritosdropdown);
        print("POP: corona", POPULARDRINKS.OPTIONS.options.coronadropdown);

    end
end)