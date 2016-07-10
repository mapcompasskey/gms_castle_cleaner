///scr_entity_check_wall_edges()

/**
 * Check if Reached the Edge of a Wall
 *
 * Include in the End Step Event of an object.
 */

entity_at_wall_edge = false;

if (grounded && walking)
{
    // if moving left and no wall below
    if (key_left && ! position_meeting(bbox_left - 1, bbox_bottom + 1, obj_wall))
    {
        entity_at_wall_edge = true;
    }
    // else, if moving right and no wall below
    else if (key_right && ! position_meeting(bbox_right + 1, bbox_bottom + 1, obj_wall))
    {
        entity_at_wall_edge = true;
    }
}

