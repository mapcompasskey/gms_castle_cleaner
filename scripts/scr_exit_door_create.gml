///scr_exit_door_create()

/**
 * Exit Door: Initialize Variables
 *
 * Called during this object's Create event.
 *
 * The exit door is unlocked after some objective has been accomplished.
 */

is_colliding_with = noone;

can_use_door = false;

opened_sprite = spr_door;
closed_sprite = spr_door_closed;
sprite_index = closed_sprite;

