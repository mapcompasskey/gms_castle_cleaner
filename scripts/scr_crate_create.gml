///scr_crate_create()

/**
 * Crate: Initialize Variables
 *
 * Added to the crate object's Create event.
 */

scr_entity_movement_vars();

speed_x = 0;
speed_y = 4;
max_velocity_x = 0;
max_velocity_y = speed_y * 2;

current_health = 3;
maximum_health = 3;

hurting = false;
recovering = false;
dying = false;

recovering_cooldown_time = 30; // 0.5 second
recovering_cooldown_timer = 0;

falling_count = 3;
falling_counter = 3;

