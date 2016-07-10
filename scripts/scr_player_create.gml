/**
 * Player: Initialize Variables
 *
 */

scr_entity_movement_vars();
speed_x = 8;
speed_y = 12;

walking = false;
jumping = false;
falling = false;
crouching = false;
attacking = false;
hurting = false;
dying = false;

jumps = 0;
jumpsmax = 2;

can_attack = true;
attack_cooldown_time = 240;
attack_cooldown_timer = 0;

// inputs
key_left = false
key_right = false;
key_down = false;
key_jump_pressed = false;
key_jump_released = false;
key_attack_pressed = false;

// object sprite
sprite_index = spr_player;
image_speed = 0;
image_index = 0;

