///scr_mouse_trap_create()

/**
 * Mouse Trap: Initialize Variables
 *
 * Added to this object's Create event.
 *
 * If the mouse trap is "dying" it won't be included during collision checks.
 * This should prevent a single mouse trap from interacting with multiple
 * instances during a single step event.
 */

event_inherited();

dying = false;

item_name = 'Unbaited Mouse Trap';
has_cheese = false;
image_speed = 0;
image_index = 0;

