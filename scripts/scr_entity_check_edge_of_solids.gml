///scr_entity_check_edge_of_solids

/**
 * Check if Reached the Edge of a Solid
 *
 * Include in an object's End Step event.
 */

entity_at_edge_of_solid = false;

if (grounded && walking)
{
    // if moving left and no solid object below
    if (key_left && ! position_meeting(bbox_left - 1, bbox_bottom + 1, obj_solid))
    {
        entity_at_edge_of_solid = true;
    }
    // else, if moving right and no solid object below
    else if (key_right && ! position_meeting(bbox_right + 1, bbox_bottom + 1, obj_solid))
    {
        entity_at_edge_of_solid = true;
    }
}

