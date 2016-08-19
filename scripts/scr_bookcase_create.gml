///scr_bookcase_create()

/**
 * Bookcase: Initialize Variables
 *
 * Added to the bookcase object's Create event.
 */

is_colliding_with = noone;

current_health = 2;
maximum_health = 2;

hurting = false;
dying = false;
recovering = false;

recovering_cooldown_time = 10; // 1/6 second
recovering_cooldown_timer = 0;

// object sprites and animations
idle_speed = 0;
idle_sprite = spr_bookcase_idle;

hurting_speed = 0;
hurting_sprite = spr_bookcase_hurting;

dying_speed = 0.5;
dying_sprite = spr_bookcase_dying;

sprite_index = idle_sprite;
image_index = 0;
image_speed = idle_speed;

