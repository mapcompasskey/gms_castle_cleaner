///scr_block_create()

/**
 * Block: Initialize Variables
 *
 * Called during this object's Create event.
 */

scr_entity_movement_vars();

speed_x = 0;
speed_y = 4;
max_velocity_x = 0;
max_velocity_y = speed_y * 2;

current_health = 1;
maximum_health = 3;

hurting = false;
recovering = false;
falling = true;

recovering_cooldown_time = 10; // 1/6 second
recovering_cooldown_timer = 0;

falling_count = 5;
falling_counter = 0;

idle_sprite = spr_block;
falling_sprite = spr_block_falling;
hurting_sprite = spr_block_falling;
dying_object = obj_dying_block;

