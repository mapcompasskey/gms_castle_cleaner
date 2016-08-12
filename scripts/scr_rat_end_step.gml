///scr_rat_end_step()

/**
 * Rate: On End of Update
 *
 * Added to the rat object's End Step event.
 */


/**
 * Update Movement Speeds
 */

scr_entity_movement_update();


/**
 * Has Reached Edge of Wall
 */

scr_entity_check_wall_edges();

if (entity_at_wall_edge)
{
    key_left = !key_left;
    key_right = !key_right;
}


/**
 * Is Colliding with Walls
 */

scr_entity_check_wall_collisions();

//if (entity_hit_wall)
if ( ! entity_at_wall_edge && entity_hit_wall)
{
    key_left = !key_left;
    key_right = !key_right;
}


/**
 * Update Object Position
 */

x += mx;
y += my;

scr_entity_keep_in_room();

