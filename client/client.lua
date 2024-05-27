RegisterCommand("GiveStat", function(source, args, rawCommand)
    local id = args[1]
    local stat = args[2]
    if id == "me" then
        local maxHp = GetEntityMaxHealth(PlayerPedId())
        if stat == "hp" then
            SetEntityHealth(PlayerPedId(), maxHp)
            print("HP setelve")
        elseif stat == "armor" then
            SetPedArmour(PlayerPedId(), 100)
            print("Armor setelve")
        elseif stat == "both" then
            SetEntityHealth(PlayerPedId(), maxHp)
            SetPedArmour(PlayerPedId(), 100)
        else
            print("HP-t es ARMOR-t lehet setelni!")
        end
    else
        id = tonumber(args[1])
        local idX = GetPlayerFromServerId(id)
        
        if idX ~= -1 then
            local ped = GetPlayerPed(idX)
            local maxHp = GetEntityMaxHealth(ped)
            if stat == "hp" then
                SetEntityHealth(ped, maxHp)
                print("HP setelve")
            elseif stat == "armor" then
                SetPedArmour(ped, 100)
                print("Armor setelve")
            elseif stat == "both" then
                SetEntityHealth(ped, maxHp)
                SetPedArmour(ped, 100)
            else
                print("HP-t es ARMOR-t lehet setelni!")
            end        
        else
            print("nem letezik", idX)
        end
    end
end)