///scr_mouse_trap_step()

/**
 * Mouse Trap: On Update
 *
 * Called during this object's Step event.
 */

if (has_cheese)
{
    image_index = 1;
    item_name = 'Baited Mouse Trap';
}

if (dying)
{
    // mark this instance for destruction
    instance_destroy();
}

