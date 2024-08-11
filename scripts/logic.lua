WORLDS = {"wonderland", "olympus_coliseum", "deep_jungle", "agrabah", "monstro", "halloween_town", "neverland", "hollow_bastion", "end_of_the_world"}
KEYBLADES = {"lady_luck", "olympia", "jungle_king", "three_wishes", "wishing_star", "pumpkinhead", "fairy_harp", "divine_rose", "oblivion"}
CUPS = {"phil_cup,", "pegasus_cup", "hercules_cup"}
MAGIC = {"fire", "blizzard", "thunder", "cure", "gravity", "stop", "aero"}
SLOT_DATA = slot_data

--- count functions
function world_count()
    local count = 0
    for key, value in pairs(SLOT_DATA) do
        if key == "chestsunlocked" then
            for _, item in pairs(WORLDS) do
                if has(item) then
                    count = count + 1
                end
            end
        elseif key == "chestslocked" then
            for i, item in ipairs(WORLDS) do
                if has(item) then
                    count = count + 0.5
                end
                if has(KEYBLADES[i]) then
                    count = count + 0.5
                end
                if has("atlantica") then
                    count = count + 0.5
                end
            end
        end
    end
    return count
end

function puppy_count()
    local count = 0
    if has("puppies_single") then
        count = count + Tracker:FindObjectForCode("puppies_single").AcquiredCount
    elseif has("puppies_triplets") then
        count = count + (Tracker:FindObjectForCode("puppies_triplets").AcquiredCount * 3)
    elseif has("puppies_all") then
        count = 99
    end
    return(count)
end

function cups_count()
    local count = 0
    for _, item in pairs(CUPS) do
        if has(item) then
            count = count + 1
        end
    end
    return count
end

--- world access

function access_chests(world_id)
    local world_id_n = tonumber(world_id)

    for key, value in pairs(SLOT_DATA) do
        if key == "chestsunlocked" then
            if has(WORLDS[world_id_n]) then
                return true
            end
        elseif key == "chestslocked" then
            if has(WORLDS[world_id_n]) and has(KEYBLADES[world_id_n]) then
                return true
            end
        end
    end
    return false
end

function eotw_access()
    for key, value in pairs(SLOT_DATA) do
        if has("end_of_the_world") then
            return true
        elseif Tracker:FindObjectForCode("report").AcquiredCount == SLOT_DATA["required_reports_eotw"]then
            return true
        end
    end

    return false
end

function eotw_chests()
    for key, value in pairs(SLOT_DATA) do
        if key == "chestsunlocked" then
            return true
        elseif key == "chestslocked" then
            if has("oblivion") then
                return true
            end
        end
    end

    return false
end

function tt_chests()
    for key, value in pairs(SLOT_DATA) do
        if key == "chestsunlocked" then
            return true
        elseif key == "chestslocked" then
            if has("lionheart") then
                return true
            end
        end
    end

    return false
end

function haw_chests()
    for key, value in pairs(SLOT_DATA) do
        if key == "chestsunlocked" then
            return true
        elseif key == "chestslocked" then
            if has("oathkeeper") then
                return true
            end
        end
    end

    return false
end

--- access functions

function has_lv_magic(level)
    for _, spell in ipairs(MAGIC) do
        if not has(spell, level) then
            return false
        end
    end
    return true
end

function has_all_arts()
    return has("fire_arts") and has("blizzard_arts") and has("thunder_arts") and has("cure_arts") and has("gravity_arts") and has("stop_arts") and has("aero_arts")
end

function oogie_manor_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("fire")) or
       (stage == 1 and has("high_jump", 2)) or
       (stage == 1 and has("high_jump") and has("glide")) then
       return true
    end

    return false
end

function has_emblems()
    return has("emblem_flame") and has("emblem_chest") and has("emblem_statue") and has("emblem_fountain")
end

function flame_emblem_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("theon_6") or has("high_jump", 3) or has_emblems()) and
       (has("fire")) and
       (has("high_jump") or has("glide") or has("thunder") or stage == 1) then
       return true
    end

    return false
end

function has_defenses()
    return has("cure", 2) and has("leaf_bracer") and has("dodge_roll") and (has("second_chance") or has("mp_rage") or has("aero", 2))
end

function has_offensive_magic()
    return has("fire") or has("blizzard") or has("thunder") or has("gravity") or has("stop")
end


--- event tracking

function finished_monstro()
    if Tracker:FindObjectForCode("@Monstro Events/Defeat Parasite Cage II/").AvailableChestCount == 0 then
        return true
    end
    
    return false
end

function finished_deepjungle()
    if Tracker:FindObjectForCode("@Deep Jungle Events/Seal the Keyhole/").AvailableChestCount == 0 then
        return true
    end
    
    return false
end

function finished_halloweentown()
    if Tracker:FindObjectForCode("@Halloween Town Events/Defeat Oogie's Manor/").AvailableChestCount == 0 then
        return true
    end
    
    return false
end

function defeat_hercules()
    if Tracker:FindObjectForCode("@Olympus Coliseum Events/Olympus Coliseum Cups/Hercules Cup").AvailableChestCount == 0 then
        return true
    end

    return false
end

function defeat_hades()
    if Tracker:FindObjectForCode("@Olympus Coliseum Events/Olympus Coliseum Cups/Defeat Hades").AvailableChestCount == 0 then
        return true
    end

    return false
end

function clocktower_access()
    if finished_hollowbastion() then
        if Tracker:FindObjectForCode("@Neverland Events/Defeat Phantom/").AvailableChestCount == 0 then
            return true
        end
    else
        if has("green_trinity") then
            return true
        end
    end

    return false
end

function rescue_kairi()
    if Tracker:FindObjectForCode("@Hollow Bastion Events/Defeat Riku II/").AvailableChestCount == 0 then
        return true
    end

    return false
end

function finished_hollowbastion()
    if Tracker:FindObjectForCode("@Hollow Bastion Events/Defeat Behemoth/").AvailableChestCount == 0 then
        return true
    end
    
    return false
end