/**
 * Player: On End of Update
 *
 */


/**
 * Update Movement Speeds
 */

scr_entity_movement_update();


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
fnt_update_camera(x, y, true);

