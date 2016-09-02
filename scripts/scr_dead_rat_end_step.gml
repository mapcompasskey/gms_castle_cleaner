///scr_dead_rat_end_step()

/**
 * Dead Rat: On End of Update
 *
 * Called during this object's End Step event.
 */

// if being carried, follow the object
if (is_being_carried != noone)
{
    with (is_being_carried)
    {
        other.x = x;
        other.y = bbox_top;
    }

    return false;
}


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

