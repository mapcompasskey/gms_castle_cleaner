///scr_mouse_trap_step()

/**
 * Mouse Trap: On Update
 *
 * Added to this object's Step event.
 */

event_inherited();

if (has_cheese && image_index == 0)
{
    image_index = 1;
    item_name = 'Baited Mouse Trap';
}

if (dying)
{
    // mark this instance for destruction
    instance_destroy();
}

