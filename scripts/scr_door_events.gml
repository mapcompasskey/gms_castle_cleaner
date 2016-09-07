///scr_door_events(event)

/**
 * Door: Events Controller
 *
 * Added to each of this object's events.
 */

switch(argument0)
{
    case 'create':
        scr_door_create();
        break;
        
    case 'step':
        scr_door_step();
        break;
                
    case 'draw':
        scr_door_draw();
        break;
}

