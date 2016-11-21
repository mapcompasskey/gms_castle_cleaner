///scr_spider_create()

/**
 * Spider: Initialize Variables
 *
 * Added to this object's Create event.
 */

scr_entity_movement_vars();
scr_recovering_flash_overlay('create');

speed_x = random_range(1.5, 2.5);
speed_y = random_range(3, 4);

damage = 1;
current_health = 1;
maximum_health = 1;

walking = false;
jumping = false;
falling = false;
attacking = false;
hurting = false;
recovering = false;
dying = false;

action_time = random_range(120, 240); // 2 - 4 seconds
action_timer = action_time;

jump_time = random_range(30, 120) // 0.5 - 2 seconds
jump_timer = 0;

recovering_cooldown_time = 15; // 1/4 a second
recovering_cooldown_timer = 0;
flashing_time = 2; // 1/60 a second
flashing_timer = 0;
//flashing_color = c_white;
is_flashing = false;


// faux inputs
key_left = false;
key_right = false;
key_down = false;
key_jump_pressed = false;
key_jump_released = false;
key_attack_pressed = false;

// sprite animations
idle_speed = 0.05;
idle_sprite = spr_spider_idle;

hurting_speed = 0;
hurting_sprite = spr_spider_jumping;

jumping_speed = 0;
jumping_sprite = spr_spider_jumping;

falling_speed = 0;
falling_sprite = spr_spider_falling;

walking_speed = 0.3;
walking_sprite = spr_spider_walking;

dying_speed = 0.3;
dying_sprite = spr_spider_dying;

sprite_index = idle_sprite;
image_index = 0;
image_speed = idle_speed;
mask_index = spr_spider_mask;

