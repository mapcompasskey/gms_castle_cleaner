///scr_player_end_step()

/**
 * Player: On End of Update
 *
 * Added to the player object's End Step event.
 */


/**
 * Update Movement Speeds
 */

scr_entity_movement_update();


// if on a ladder, being pushed down and not crouching
if (on_ladder && my > 0 && ! crouching)
{
    // reset y step movement and velocity
    my = 0;
    velocity_y = 0;
}


/**
 * Is Colliding with Walls
 */

scr_entity_check_wall_collisions();


/**
 * Is Colliding with Dying Blocks
 */

scr_entity_check_dying_block_collisions();


/**
 * Update Object Position
 */

x += mx;
y += my;

scr_entity_keep_in_room();


/**
 * Update Item Position
 */

if (is_carrying_item)
{
    with (is_carrying_item)
    {
        x = other.x;
        y = other.bbox_top;
    }
}


/**
 * Update Camera Position
 */

// move towards the player
scr_camera_update(x, y, true);

