///scr_mouse_trap_events(event)

/**
 * Mouse Trap: Events Controller
 *
 * Added to each of this object's events.
 */

switch(argument0)
{
    case 'create':
        scr_mouse_trap_create();
        break;
        
    case 'step':
        scr_mouse_trap_step();
        break;
        
    case 'end step':
        scr_mouse_trap_end_step();
        break;
        
    case 'draw':
        scr_mouse_trap_draw();
        break;
}

