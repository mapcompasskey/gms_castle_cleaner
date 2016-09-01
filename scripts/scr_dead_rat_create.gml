///scr_dead_rat_create()

/**
 * Dead Rat: Initialize Variables
 *
 * Called during this object's Create event.
 */

scr_entity_movement_vars();
speed_x = 4;
speed_y = 4;

move_friction = 0.9; // reduce by 10% every step
move_friction_min = 1; // if less than 1
jump_bounce = 0.5; // reduce by 50% every bounce
jump_bounce_min = 1; // if less than 1

can_use_item = true;
player_collision = false;
is_being_carried = false;

image_index = 0;
image_speed = 0;

