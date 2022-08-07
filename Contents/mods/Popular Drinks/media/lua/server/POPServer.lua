local OPTIONS = POPULARDRINKS.OPTIONS

-- Check actual options at game loading.
Events.OnGameStart.Add(function()
    if not isClient() then -- only host may take these options
        print("POP: SERVER DIRECTORY OPTIONS LOADED")
        
        print("POP: jetdropdown", POPULARDRINKS.OPTIONS);
        print("POP: caciquedropdown", POPULARDRINKS.OPTIONS);
        print("POP: flvanilladropdown", POPULARDRINKS.OPTIONS);
        print("POP: flstrawberrydropdown", POPULARDRINKS.OPTIONS);
        print("POP: flchocolatedropdown", POPULARDRINKS.OPTIONS);
        print("POP: irnbrudropdown", POPULARDRINKS.OPTIONS);
        print("POP: redbulldropdown", POPULARDRINKS.OPTIONS);
    end
end)