WORLDS = {"wonderland", "olympus_coliseum", "deep_jungle", "agrabah", "monstro", "halloween_town", "neverland", "hollow_bastion", "end_of_the_world"}
KEYBLADES = {"lady_luck", "olympia", "jungle_king", "three_wishes", "wishing_star", "pumpkinhead", "fairy_harp", "divine_rose", "oblivion"}
PUPPIES = {"puppies_single", "puppies_triplets"}
CUPS = {"phil_cup,", "pegasus_cup", "hercules_cup"}
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

--- access functions

function any_glide()
    return has("glide") or has("superglide")
end

function has_emblems()
    return has("emblem_flame") and has("emblem_chest") and has("emblem_statue") and has("emblem_fountain") and has("hollow_bastion") and world_count>=5
end

function has_defenses()
    return has("cure:2") and has("leaf_bracer") and has("dodge_roll") and has("second_chance") or has("mp_rage") or has("aero:2")
end

function has_offensive_magic()
    return has("fire:1") or has("blizzard:1") or has("thunder:1") or has("gravity:1") or has("stop:1")
end

function has_lv2_magic()
    return has("fire:2") and has("blizzard:2") and has("thunder:2") and has("cure:2") and has("gravity:2") and has("stop:2") and has("aero:2")
end

function can_get_fire_emblem()
    return (has("theon_6") or has("high_jump:3" or has_emblems())) and has("fire:1") and (has("high_jump") or any_glide() or has("thunder:1"))
end

--- world access

function access_chests(world_id)
    local world_id_n = tonumber(world_id)
    local accessible = false

    for key, value in pairs(SLOT_DATA) do
        if key == "chestsunlocked" then
            if has(WORLDS[world_id_n]) then
                accessible = true
            end
        elseif key == "chestslocked" then
            if has(WORLDS[world_id_n]) and has(KEYBLADES[world_id_n]) then
                accessible = true
            end
        end
    end
    return accessible
end

function eotw_access()
    local accessible = false

    for key, value in pairs(SLOT_DATA) do
        if key == "chestsunlocked" then
            if has("end_of_the_world") then
                accessible = true
            elseif Tracker:FindObjectForCode("report").AcquiredCount == SLOT_DATA["required_reports_eotw"]then
                accessible = true
            end
        elseif key == "chestslocked" then
            if has("end_of_the_world") and has("oblivion") then
                accessible = true
            elseif Tracker:FindObjectForCode("report").AcquiredCount == SLOT_DATA["required_reports_eotw"] and has("oblivion") then
                accessible = true
            end
        end
    end

    return accessible
end

function tt_chests()
    local accessible = false

    for key, value in pairs(SLOT_DATA) do
        if key == "chestsunlocked" then
            accessible = true
        elseif key == "chestslocked" then
            if has("lionheart") then
                accessible = true
            end
        end
    end

    return accessible
end

function haw_chests()
    local accessible = false

    for key, value in pairs(SLOT_DATA) do
        if key == "chestsunlocked" then
            accessible = true
        elseif key == "chestslocked" then
            if has("oathkeeper") then
                accessible = true
            end
        end
    end

    return accessible
end