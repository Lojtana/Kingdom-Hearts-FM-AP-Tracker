-- Traverse Town Mystical House Yellow Trinity Chest
function yellow_trinity_or_jump()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("yellow_trinity") or has("high_jump", 2)) or
       (stage == 1 and has("high_jump")) then
        return true
    end

    return false
end

-- Traverse Town 1st District Blue Trinity Balcony Chest
function blue_trinity_or_glide()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("blue_trinity")) or
       (stage == 1 and has("glide")) then
       return true
    end

    return false
end

-- Traverse Town Mystical House Glide Chest
function glide_or_jump_or_mermaidkick()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (stage == 1 and has("combo_master") and ((has("high_jump") and has("yellow_trinity")) or has("high_jump", 2))) or
       (stage == 1 and has("mermaid_kick")) then
       return true
    end

    return false
end

-- Wonderland Lotus Forest Glide Chest
function wonderland_glide_or_dumbo()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (stage == 1 and has("footprints") and (has("high_jump") or has("dumbo"))) then
       return true
    end

    return false
end

-- Wonderland Lotus Forest Corner Chest
-- Deep Jungle Hippo's Lagoon Right Chest
-- Agrabah Cave of Wonders Bottomless Hall Pillar Chest
-- Halloween Town Bridge Left of Gate Chest
function jump_glide_or_nothing()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump") or has("glide")) or
       (stage == 1) then
       return true
    end

    return false
end

-- Wonderland Tea Party Garden Above Lotus Forest Entrance 2nd Chest
-- Wonderland Tea Party Garden Above Lotus Forest Entrance 1st Chest
function wonderland_glide_or_jump()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (stage == 1 and has("high_jump") and has("footprints")) then
       return true
    end

    return false
end

-- Wonderland Tea Party Garden Bear and Clock Puzzle Chest
function wonderland_doublejump_or_glide()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("footprints")) or
       (has("high_jump", 2)) or
       (stage == 1 and has("glide")) then
       return true
    end

    return false
end

-- Wonderland Tea Party Garden Across From Bizarre Room Entrance Chest
function wonderland_teaparty_high_hedge_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (has("footprints") and has("high_jump", 3)) or
       (stage == 1 and has("footprints") and has("high_jump") and has("combo_master")) then
       return true
    end

    return false
end

-- Deep Jungle Tree House Suspended Boat Chest
-- Halloween Town Bridge Right of Gate Chest
function glide_or_nothing()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (stage == 1) then
       return true
    end

    return false
end

-- Agrabah Main Street High Above Palace Gates Entrance Chest
function jump_glide_or_dumbo()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump") or has("glide")) or
       (stage == 1 and has("dumbo")) then
       return true
    end

    return false
end

-- Agrabah Palace Gates High Opposite Palace Chest
-- Monstro Chamber 6 Platform Near Chamber 5 Entrance Chest
-- Monstro Chamber 3 Platform Above Chamber 2 Entrance Chest
-- Monstro Chamber 3 Platform Near Chamber 6 Entrance Chest
-- Monstro Chamber 5 Atop Barrel Chest
function jump_or_nothing()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump")) or
       (stage == 1) then
       return true
    end

    return false
end

-- Agrabah Palace Gates High Close to Palace Chest
function triplejump_or_glide_or_master_or_dumbo()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump") and has("glide")) or
       (has("high_jump", 3)) or
       (stage == 1 and has("glide")) or
       (stage == 1 and has("combo_master")) or
       (stage == 1 and has("dumbo")) then
       return true
    end

    return false
end

-- Agrabah Cave of Wonders Entrance Tall Tower Chest
function doublejump_glide_or_master_or_dumbo()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (has("high_jump", 2)) or
       (stage == 1 and has("combo_master")) or
       (stage == 1 and has("dumbo")) then
       return true
    end

    return false
end

-- Agrabah Cave of Wonders Hidden Room Right Chest
-- Agrabah Cave of Wonders Hidden Room Left Chest
function yellow_trinity_or_glide()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("yellow_trinity")) or
       (has("high_jump"))
       (stage == 1 and has("glide")) then
       return true
    end

    return false
end

-- Monstro Chamber 6 Other Platform Chest
-- Monstro Chamber 6 Raised Area Near Chamber 1 Entrance Chest
function jump_or_combo_master()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump")) or
       (stage == 1 and has("combo_master")) then
       return true
    end

    return false
end

-- Monstro Defeat Parasite Cage II Stop Event
function jump_or_glide()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump")) or
       (stage == 1 and has("glide")) then
       return true
    end

    return false
end

-- Halloween Town Guillotine Square High Tower Chest
function jump_or_glide_or_dumbo()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump")) or
       (stage == 1 and has("glide")) or
       (stage == 1 and has("dumbo")) then
       return true
    end

    return false
end

-- Halloween Town Guillotine Square Pumpkin Structure Left Chest
-- Halloween Town Guillotine Square Pumpkin Structure Right Chest
function halloweentown_pumpkin_structure_access()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if ((has("high_jump")) or (stage == 1 and has("glide"))) and
       (has("glide") or has("high_jump", 2) or (stage == 1 and has("combo_master"))) then
       return true
    end

    return false
end

-- Hollow Bastion Rising Falls High Platform Chest
function hb_glide_blizzard_or_combo_master()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (has("blizzard") and rescue_kairi()) or
       (stage == 1 and has("combo_master")) then
       return true
    end

    return false
end

-- Hollow Bastion Castle Gates Gravity Chest
function doublejump_glide_or_dumbo_glide()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (stage == 1 and has("high_jump", 2) and has("glide")) or
       (stage == 1 and has("dumbo") and has("glide")) then
       return true
    end

    return false
end

-- Hollow Bastion Castle Gates Freestanding Pillar Chest
function doublejump_or_dumbo()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump", 2)) or
       (stage == 1 and has("dumbo")) then
       return true
    end

    return false
end

-- Hollow Bastion Entrance Hall Left of Emblem Door Chest
function hb_jump_or_dumbo()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump")) or
       (stage == 1 and has("dumbo") and has_emblems()) then
       return true
    end

    return false
end

-- End of the World Giant Crevasse 4th Chest
function glide_or_jump_combo_master()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("glide")) or
       (stage == 1 and has("high_jump") and has("combo_master")) then
       return true
    end

    return false
end

-- End of the World World Terminus Agrabah Chest
function jump_or_glide_dumbo()
    local stage = Tracker:FindObjectForCode("advanced_logic").CurrentStage

    if (has("high_jump")) or
       (stage == 1 and has("glide") and has("dumbo")) then
       return true
    end

    return false
end