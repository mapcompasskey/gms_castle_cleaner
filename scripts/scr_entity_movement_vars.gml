///scr_entity_movement_vars()

/**
 * Movement Variables used by Entities
 *
 * Include in an object's Create event.
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
jump_bounce = 0;       // 0.4 - reduce by 60% every bounce
jump_bounce_min = 0;   // 1   - if less than 1

is_colliding_with = noone; // used for collision detection
damage = 1;
current_health = 1;
maximum_health = 1;

// used by "scr_draw_flashing_overlay"
recovering_flash_color = c_white;
recovering_flash_time = 2; // 1/30 a second
recovering_flash_timer = 0;

