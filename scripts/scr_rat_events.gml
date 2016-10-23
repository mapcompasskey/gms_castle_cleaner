///scr_rat_events(event)

/**
 * Rat: Events Controller
 *
 * Added to each of this object's events.
 */

switch(argument0)
{
    case 'create':
        scr_rat_create();
        break;
        
    case 'step':
        scr_rat_step();
        break;
        
    case 'end step':
        scr_rat_end_step();
        break;
        
    case 'draw':
        scr_rat_draw();
        break;
}

