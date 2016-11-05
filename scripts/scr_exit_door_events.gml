///scr_exit_door_events(event)

/**
 * Exit Door: Events Controller
 *
 * Added to each of this object's events.
 */

switch(argument0)
{
    case 'create':
        scr_exit_door_create();
        break;
        
    case 'step':
        scr_exit_door_step();
        break;
                
    case 'draw':
        scr_exit_door_draw();
        break;
}

