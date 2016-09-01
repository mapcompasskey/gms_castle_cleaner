///scr_dead_rat_end_step()

/**
 * Dead Rat: On End of Update
 *
 * Called durinig this object's End Step event.
 */


/**
 * Update Movement Speeds
 */

scr_entity_movement_update();


/**
 * Is Colliding with Walls
 */

scr_entity_check_wall_collisions();

if (entity_hit_wall)
{
    //key_left = !key_left;
    //key_right = !key_right;
    velocity_x = -(last_velocity_x);
}


/**
 * Update Object Position
 */

x += mx;
y += my;

scr_entity_keep_in_room();

