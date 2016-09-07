///scr_dead_rat_create()

/**
 * Dead Rat: Initialize Variables
 *
 * Called during this object's Create event.
 */

scr_entity_movement_vars();
speed_x = 2;
speed_y = 2;

move_friction = 0.9; // reduce by 10% every step
move_friction_min = 1; // if less than 1
jump_bounce = 0.4; // reduce by 60% every bounce
jump_bounce_min = 1; // if less than 1

can_be_carried = false; // start disabled
is_being_carried_by = noone;
was_being_carried_by = noone;

disable_time = 30; // 0.5 second
disable_timer = 0;

image_index = 0;
image_speed = 0;

