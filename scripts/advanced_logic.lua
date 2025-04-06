-- Traverse Town Mystical House Yellow Trinity Chest
function tt_mythical_house_trinity_chest_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("yellow_trinity") or has("high_jump", 2)) or
       (stage == 1 and has("high_jump")) then
        return AccessibilityLevel.Normal
    elseif (has("high_jump")) then
        return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Traverse Town 1st District Blue Trinity Balcony Chest
function tt_balcony_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("blue_trinity")) or
       (stage == 1 and has("glide")) then
       return AccessibilityLevel.Normal
    elseif (has("glide")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Traverse Town Mystical House Glide Chest
function tt_mystical_house_glide_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (stage == 1 and has("combo_master") and ((has("high_jump") and has("yellow_trinity")) or has("high_jump", 2))) or
       (stage == 1 and has("mermaid_kick")) then
       return AccessibilityLevel.Normal
    elseif (has("combo_master") and ((has("high_jump") and has("yellow_trinity")) or has("high_jump", 2))) or
        (has("mermaid_kick")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Wonderland Lotus Forest Glide Chest
function wl_lotus_forest_southwest_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (stage == 1 and has("footprints") and (has("high_jump") or has("dumbo"))) then
       return AccessibilityLevel.Normal
    elseif (has("footprints") and (has("high_jump") or has("dumbo"))) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Wonderland Lotus Forest Corner Chest
-- Deep Jungle Hippo's Lagoon Right Chest
-- Agrabah Cave of Wonders Bottomless Hall Pillar Chest
-- Halloween Town Bridge Left of Gate Chest
function jump_or_glide_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump") or has("glide")) or
       (stage == 1) then
       return true
    end

    return false
end

-- Wonderland Tea Party Garden Above Lotus Forest Entrance 2nd Chest
-- Wonderland Tea Party Garden Above Lotus Forest Entrance 1st Chest
function wl_tea_party_entrance_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (has("footprints") and has("high_jump", 2)) or
       (stage == 1 and has("high_jump") and has("footprints")) then
       return AccessibilityLevel.Normal
    elseif (has("high_jump") and has("footprints")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Wonderland Tea Party Garden Bear and Clock Puzzle Chest
function wl_tea_party_bear_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("footprints")) or
       (stage == 1 and has("glide")) then
       return AccessibilityLevel.Normal
    elseif (has("glide")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Wonderland Tea Party Garden Across From Bizarre Room Entrance Chest
function wl_tea_party_high_hedge_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (has("footprints") and has("high_jump", 3)) or
       (stage == 1 and has("footprints") and has("high_jump") and has("combo_master")) then
       return AccessibilityLevel.Normal
    elseif (has("footprints") and has("high_jump") and has("combo_master")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Deep Jungle Tree House Suspended Boat Chest
-- Halloween Town Bridge Right of Gate Chest
function glide_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (stage == 1) then
       return true
    end

    return false
end

-- Agrabah Main Street High Above Palace Gates Entrance Chest
function ag_main_street_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump") or has("glide")) or
       (stage == 1 and has("dumbo")) then
         return AccessibilityLevel.Normal
    elseif (has("dumbo")) then
         return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Agrabah Palace Gates High Opposite Palace Chest
-- Monstro Chamber 6 Platform Near Chamber 5 Entrance Chest
-- Monstro Chamber 3 Platform Above Chamber 2 Entrance Chest
-- Monstro Chamber 3 Platform Near Chamber 6 Entrance Chest
-- Monstro Chamber 5 Atop Barrel Chest
function jump_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump")) or
       (stage == 1) then
       return true
    end

    return false
end

-- Agrabah Palace Gates High Close to Palace Chest
function ag_palace_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump") and has("glide")) or
       (has("high_jump", 3)) or
       (stage == 1 and has("glide")) or
       (stage == 1 and has("combo_master")) or
       (stage == 1 and has("dumbo")) then
       return AccessibilityLevel.Normal
    elseif (has("glide")) or
       (has("combo_master")) or
       (has("dumbo")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Agrabah Cave of Wonders Entrance Tall Tower Chest
function ag_cow_entrance_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (has("high_jump", 2)) or
       (stage == 1 and has("combo_master")) or
       (stage == 1 and has("dumbo")) then
       return AccessibilityLevel.Normal
    elseif (has("combo_master")) or
       (has("dumbo")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Agrabah Cave of Wonders Hidden Room Right Chest
-- Agrabah Cave of Wonders Hidden Room Left Chest
function ag_cow_hidden_room_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("yellow_trinity")) or
       (has("high_jump")) or
       (stage == 1 and has("glide")) then
       return AccessibilityLevel.Normal
    elseif (has("glide")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Monstro Chamber 6 Other Platform Chest
-- Monstro Chamber 6 Raised Area Near Chamber 1 Entrance Chest
function mon_chamber_6_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump") and has("glide")) or
       (stage == 1 and has("combo_master")) then
       return AccessibilityLevel.Normal
    elseif (has("combo_master")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Monstro Defeat Parasite Cage II Stop Event
function mon_parasite_ii_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump")) or
       (stage == 1 and has("glide")) then
       return AccessibilityLevel.Normal
    elseif (has("glide")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Halloween Town Guillotine Square High Tower Chest
function ht_high_tower_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump")) or
       (stage == 1 and has("glide")) or
       (stage == 1 and has("dumbo")) then
       return AccessibilityLevel.Normal
    elseif (has("dumbo") or has("glide")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Halloween Town Guillotine Square Pumpkin Structure Left Chest
-- Halloween Town Guillotine Square Pumpkin Structure Right Chest
function ht_pumpkin_structure_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if ((has("high_jump")) or (stage == 1 and has("glide"))) and
       (has("glide") or has("high_jump", 2) or (stage == 1 and has("combo_master"))) then
       return AccessibilityLevel.Normal
    elseif (has("glide") or (has("high_jump") and has("combo_master"))) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Hollow Bastion Rising Falls High Platform Chest
function hb_rising_falls_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (has("blizzard") and has_emblems()) or
       (stage == 1 and has("combo_master")) then
       return AccessibilityLevel.Normal
    elseif (has("combo_master")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Hollow Bastion Castle Gates Gravity Chest
function hb_castle_gates_gravity_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has_emblems()) or
       (stage == 1 and has("high_jump", 2) and has("glide")) or
       (stage == 1 and has("dumbo") and has("glide")) then
       return AccessibilityLevel.Normal
    elseif (has("high_jump", 2) and has("glide")) or
           (has("dumbo") and has("glide")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Hollow Bastion Castle Gates Freestanding Pillar Chest
function hb_castle_gates_pillar_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has_emblems()) or
       (has("high_jump", 2)) or
       (stage == 1 and has("dumbo")) then
       return AccessibilityLevel.Normal
    elseif (has("dumbo")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- Hollow Bastion Entrance Hall Left of Emblem Door Chest
function hb_entrance_hall_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump")) or
       (stage == 1 and has("dumbo") and has_emblems()) then
       return AccessibilityLevel.Normal
    elseif (has("dumbo") and has_emblems()) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- End of the World Giant Crevasse 4th Chest
function eotw_giant_crevasse_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (stage == 1 and has("high_jump") and has("combo_master")) then
       return AccessibilityLevel.Normal
    elseif (has("high_jump") and has("combo_master")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end

-- End of the World World Terminus Agrabah Chest
function eotw_world_terminus_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump")) or
       (stage == 1 and has("glide") and has("dumbo")) then
       return AccessibilityLevel.Normal
    elseif (has("glide") and has("dumbo")) then
       return AccessibilityLevel.SequenceBreak
    end

    return AccessibilityLevel.None
end