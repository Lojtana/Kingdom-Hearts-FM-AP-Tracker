WORLDS = {"wonderland", "olympus_coliseum", "deep_jungle", "agrabah", "monstro", "halloween_town", "neverland", "hollow_bastion", "end_of_the_world"}
KEYBLADES = {"lady_luck", "olympia", "jungle_king", "three_wishes", "wishing_star", "pumpkinhead", "fairy_harp", "divine_rose", "oblivion"}
CUPS = {"phil_cup,", "pegasus_cup", "hercules_cup"}
MAGIC = {"fire", "blizzard", "thunder", "cure", "gravity", "stop", "aero"}

--- count functions
function world_count()
    local count = 0
    local lock_status = Tracker:FindObjectForCode("keyblade_locks").CurrentStage --- 0 = open, 1 = locked

    if lock_status == 0 then
        for _, item in pairs(WORLDS) do
            if has(item) then
                count = count + 1
            end
        end
        if has("atlantica") then
            count = count + 1
        end
    elseif lock_status == 1 then
        for i, item in ipairs(WORLDS) do
            if has(item) then
                count = count + 0.5
            end
            if has(KEYBLADES[i]) then
                count = count + 0.5
            end
        end
        if has("atlantica") then
            count = count + 1
        end
    end

    return count
end

function puppy_count()
    local count = 0
    if has("puppies_single") then
        count = count + Tracker:FindObjectForCode("puppies_single").AcquiredCount
    end
    if has("puppies_triplets") then
        count = count + (Tracker:FindObjectForCode("puppies_triplets").AcquiredCount * 3)
    end
    if has("puppies_all") then
        count = 99
    end

    Tracker:FindObjectForCode("puppies").AcquiredCount = count

    return count
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
    local lock_status = Tracker:FindObjectForCode("keyblade_locks").CurrentStage --- 0 = open, 1 = locked

    if lock_status == 0 then
        if has(WORLDS[world_id_n]) then
            return true
        end
    elseif lock_status == 1 then
        if has(WORLDS[world_id_n]) and has(KEYBLADES[world_id_n]) then
            return true
        end
    end
    return false
end

function eotw_access()
    if has("end_of_the_world") then
        return true
    elseif Tracker:FindObjectForCode("report").AcquiredCount >= Tracker:FindObjectForCode("eotw_req").AcquiredCount then
        return true
    end

    return false
end

function eotw_chests()
    local lock_status = Tracker:FindObjectForCode("keyblade_locks").CurrentStage --- 0 = open, 1 = locked

    if lock_status == 0 then
        return true
    elseif lock_status == 1 then
        if has("oblivion") then
            return true
        end
    end

    return false
end

function tt_chests()
    local lock_status = Tracker:FindObjectForCode("keyblade_locks").CurrentStage --- 0 = open, 1 = locked

    if lock_status == 0 then
        return true
    elseif lock_status == 1 then
        if has("lionheart") then
            return true
        end
    end
    
    return false
end

function haw_chests()
    local lock_status = Tracker:FindObjectForCode("keyblade_locks").CurrentStage --- 0 = open, 1 = locked

    if lock_status == 0 then
        return true
    elseif lock_status == 1 then
        if has("oathkeeper") then
            return true
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