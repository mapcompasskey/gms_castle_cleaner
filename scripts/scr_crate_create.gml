///scr_crate_create()

/**
 * Crate: Initialize Variables
 *
 * Called during this object's Create event.
 * Crates are children of Blocks.
 */

event_inherited();

idle_sprite = spr_crate;
falling_sprite = spr_crate_falling;
hurting_sprite = spr_crate_falling;
//dying_object = obj_dying_block;

