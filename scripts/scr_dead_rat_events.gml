///scr_dead_rat_events(event)

/**
 * Dead Rat: Events Controller
 *
 * Added to each of this object's events.
 */

switch(argument0)
{
    case 'create':
        scr_dead_rat_create();
        break;
        
    case 'step':
        scr_dead_rat_step();
        break;
        
    case 'end step':
        scr_dead_rat_end_step();
        break;
}

