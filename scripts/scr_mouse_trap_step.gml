///scr_mouse_trap_step()

/**
 * Mouse Trap: On Update
 *
 * Called during this object's Step event.
 */

// call the parent object's Step event
event_inherited();

if (has_cheese)
{
    image_index = 1;
}

