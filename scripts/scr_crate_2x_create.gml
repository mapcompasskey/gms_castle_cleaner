///scr_crate_2x_create()

/**
 * Crate 2x: Initialize Variables
 *
 * Called during this object's Create event.
 * Crates 2x are children of Blocks.
 */

event_inherited();

idle_sprite = spr_crate_2x;
falling_sprite = spr_crate_2x_falling;
hurting_sprite = spr_crate_2x_falling
dying_object = obj_dying_block_2x;

