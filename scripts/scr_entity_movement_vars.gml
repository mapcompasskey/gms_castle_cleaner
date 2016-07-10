///scr_entity_movement_vars()

/**
 * Movement Variables used by Entities
 *
 * Include in the Create Event of an object.
 */

gravity_factor = 1;
mx = 0;
my = 0;
speed_x = 2;
speed_y = 4;
velocity_x = 0;
velocity_y = 0;
max_velocity_x = 0;
max_velocity_y = 0;
last_velocity_x = 0;
last_velocity_y = 0;

facing = RIGHT;
grounded = false;

move_friction = 0;     // 0.9 - reduce by 10% every step
move_friction_min = 0; // 1   - if less than 1
jump_bounce = 0;       // 0.5 - reduce by 50% every bounce
jump_bounce_min = 0;   // 1   - if less than 1

is_colliding_with = noone; // used for collision detection
damage = 1;
current_health = 1;
maximum_health = 1;

