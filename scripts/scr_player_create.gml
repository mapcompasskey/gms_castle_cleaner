///scr_player_create()

/**
 * Player: Initialize Variables
 *
 * Called during this object's Create event.
 */

// update global
global.PLAYER = id;

// add default variables
scr_entity_movement_vars();
scr_recovering_flash_overlay('create');

speed_x = 3;
speed_y = 4.6;

//gravity_factor = 0.1;
//speed_x = 0.5;
//speed_y = 0.8;

max_velocity_x = speed_x * 2;
max_velocity_y = speed_y * 2;

current_health = 10;
maximum_health = 10;

walking = false;
jumping = false;
falling = false;
crouching = false;
attacking = false;
recovering = false;
hurting = false;
dying = false;
carrying = false;

jumps = 0;
jumpsmax = 10; // 0 = a sinlge jump

recovering_cooldown_time = 15; // 1/4 a second
recovering_cooldown_timer = 0;

attack_1 = false;
attack_2 = false;
can_attack = true;
player_attack = noone;
attack_cooldown_time = 240;
attack_cooldown_timer = 0;

on_ladder = false;
is_carrying_item = noone;

// inputs
key_left = false
key_right = false;
key_down = false;
key_jump_pressed = false;
key_jump_released = false;
key_attack_pressed = false;
key_attack2_pressed = false;

// object sprites and animations
idle_speed = 0.05;
idle_sprite = spr_player_idle;

crouching_speed = 0;
crouching_sprite = spr_player_crouching;

jumping_speed = 0;
jumping_sprite = spr_player_jumping;

falling_speed = 0;
falling_sprite = spr_player_falling;

walking_speed = 0.15;
walking_sprite = spr_player_walking;

attacking_speed = 0.25;
attacking_sprite = spr_player_attacking;
attacking_broken_sprite = spr_player_attacking_broken;
attacking_box_sprite = spr_player_attack_box;

attacking2_speed = 0.25;
attacking2_sprite = spr_player_attacking2;
attacking2_broken_sprite = spr_player_attacking2_broken;
attacking2_box_sprite = spr_player_attack2_box;

//hurting_speed = 0;
//hurting_sprite = spr_player_jumping;

sprite_index = idle_sprite;
image_index = 0;
image_speed = idle_speed;
mask_index = spr_player_mask;

