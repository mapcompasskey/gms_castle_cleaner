///scr_player_attack_create()

/**
 * Player Attack: Initialize Variables
 *
 * Added to this object's Create event.
 *
 * Sprite animation settings are updated by the player instance when
 * this instance is created. Since the player can have different sized
 * and timed attacks, the sprite index and image speed are updated to
 * reflect the current attack.
 */

belongs_to = noone;
damage = 1;

// sprite animations
visible = false;
sprite_index = noone;
image_index = 0;
image_speed = 0;

