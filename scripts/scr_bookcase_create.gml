///scr_bookcase_create()

/**
 * Bookcase: Initialize Variables
 *
 * Called during this object's Create event.
 */

scr_recovering_flash_overlay('create');

is_colliding_with = noone;

current_health = 2;
maximum_health = 2;

dying = false;
hurting = false;
recovering = false;

recovering_flash_time = 2;
recovering_flash_timer = 0;
recovering_flash_color = c_white;

recovering_cooldown_time = 10; // 1/6 second
recovering_cooldown_timer = 0;

// object sprites and animations
idle_speed = 0;
idle_sprite = spr_bookcase;

dying_speed = 0.5;
dying_sprite = spr_dying_tile_4x;

sprite_index = idle_sprite;
image_index = 0;
image_speed = idle_speed;

