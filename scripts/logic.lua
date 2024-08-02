WORLDS = {"wonderland", "olympus_coliseum", "deep_jungle", "agrabah", "halloween_town", "atlantica", "neverland", "hollow_bastion", "monstro"}
REPORTS = {"report_1", "report_2", "report_3", "report_4", "report_5", "report_6", "report_7", "report_8", "report_9", "report_10", "report_11", "report_12", "report_13"}
PUPPIES_SINGLE = {
    "Puppy 01", "Puppy 02", "Puppy 03", "Puppy 04", "Puppy 05", "Puppy 06", "Puppy 07", "Puppy 08", "Puppy 09", "Puppy 10", "Puppy 11", "Puppy 12", "Puppy 13", "Puppy 14",
    "Puppy 15", "Puppy 16", "Puppy 17", "Puppy 18", "Puppy 19", "Puppy 20", "Puppy 21", "Puppy 22", "Puppy 23", "Puppy 24", "Puppy 25", "Puppy 26", "Puppy 27", "Puppy 28",
    "Puppy 29", "Puppy 30", "Puppy 31", "Puppy 32", "Puppy 33", "Puppy 34", "Puppy 35", "Puppy 36", "Puppy 37", "Puppy 38", "Puppy 39", "Puppy 40", "Puppy 41", "Puppy 42",
    "Puppy 43", "Puppy 44", "Puppy 45", "Puppy 46", "Puppy 47", "Puppy 48", "Puppy 49", "Puppy 50", "Puppy 51", "Puppy 52", "Puppy 53", "Puppy 54", "Puppy 55", "Puppy 56",
    "Puppy 57", "Puppy 58", "Puppy 59", "Puppy 60", "Puppy 61", "Puppy 62", "Puppy 63", "Puppy 64", "Puppy 65", "Puppy 66", "Puppy 67", "Puppy 68", "Puppy 69", "Puppy 70",
    "Puppy 71", "Puppy 72", "Puppy 73", "Puppy 74", "Puppy 75", "Puppy 76", "Puppy 77", "Puppy 78", "Puppy 79", "Puppy 80", "Puppy 81", "Puppy 82", "Puppy 83", "Puppy 84",
    "Puppy 85", "Puppy 86", "Puppy 87", "Puppy 88", "Puppy 89", "Puppy 90", "Puppy 91", "Puppy 92", "Puppy 93", "Puppy 94", "Puppy 95", "Puppy 96", "Puppy 97", "Puppy 98", "Puppy 99"
}
PUPPIES_TRIPLETS = {
    "Puppy 01-03", "Puppy 04-06", "Puppy 07-09", "Puppy 10-12", "Puppy 13-15", "Puppy 16-18", "Puppy 19-21", "Puppy 22-24", "Puppy 25-27", "Puppy 28-30", "Puppy 31-33", "Puppy 34-36",
    "Puppy 37-39", "Puppy 40-42", "Puppy 43-45", "Puppy 46-48", "Puppy 49-51", "Puppy 52-54", "Puppy 55-57", "Puppy 58-60", "Puppy 61-63", "Puppy 64-66", "Puppy 67-69", "Puppy 70-72",
    "Puppy 73-75", "Puppy 76-78", "Puppy 79-81", "Puppy 82-84", "Puppy 85-87", "Puppy 88-90", "Puppy 91-93", "Puppy 94-96", "Puppy 97-99"
}
PUPPIES_ALL = {"All Puppies"}
CUPS = {"phil_cup,", "pegasus_cup", "hercules_cup"}
PAGES = {"page_1", "page_2", "page_3", "page_4", "page_5"}

--- count functions
function world_count()
    local count = 0
    for _, item in pairs(WORLDS) do
        if has(item) then
            count = count + 1
        end
    end
    return count
end

function puppy_count()
    local count = 0
    for _, item in pairs(PUPPIES_SINGLE) do
        if has(item) then
            count = count + 1
        end
    end
    for _, item in pairs(PUPPIES_TRIPLETS) do
        if has(item) then
            count = count + 3
        end
    end
    for _, item in pairs(PUPPIES_ALL) do
        if has(item) then
            count = 99
        end
    end
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

function page_count()
    local count = 0
    for _, item in pairs(PAGES) do
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