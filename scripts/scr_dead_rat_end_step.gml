///scr_dead_rat_end_step()

/**
 * Dead Rat: On End of Update
 *
 * Called during this object's End Step event.
 */

// if being carried
if (is_being_carried_by != noone)
{
    // reposition onto the object
    with (is_being_carried_by)
    {
        other.x = x;
        other.y = bbox_top;
    }

    return false;
}

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);


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
    velocity_x = -(last_velocity_x);
}


/**
 * Update Object Position
 */

x += mx;
y += my;

scr_entity_keep_in_room();

