///scr_spiderweb_create()

/**
 * Spider Web: Initialize Variables
 *
 * Added to this object's Create event.
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

spawn_counter = 0;
spawn_maximum = 3;
spawn_time = (random_range(2, 4) * 60);
spawn_timer = spawn_time;


// object sprites and animations
idle_speed = 0;
idle_sprite = spr_spiderweb_idle;

dying_speed = 0.3;
dying_sprite = spr_spider_dying;

sprite_index = idle_sprite;
image_index = 0;
image_speed = idle_speed;

