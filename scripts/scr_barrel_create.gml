///scr_barrel_create()

/**
 * Barrel: Initialize Variables
 *
 * Added to the barrel object's Create event.
 * Crates are children of Blocks.
 */

event_inherited();

idle_sprite = spr_barrel;
falling_sprite = spr_barrel_falling;
hurting_sprite = spr_barrel_falling;
//dying_object = obj_dying_block;

