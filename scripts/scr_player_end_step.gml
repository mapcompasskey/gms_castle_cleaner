/**
 * Player: On End of Update
 *
 */


/**
 * Update Movement Speeds
 */

scr_entity_movement_update();


// if on a ladder and being pushed down
if (on_ladder && my > 0)
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
 * Update Object Position
 */

x += mx;
y += my;

scr_entity_keep_in_room();


/**
 * Update Camera Position
 */

// move towards the player
scr_camera_update(x, y, true);

