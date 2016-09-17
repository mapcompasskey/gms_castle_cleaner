///scr_bookcase_events(event)

/**
 * Bookcase: Events Controller
 *
 * Added to each of this object's events.
 */

switch(argument0)
{
    case 'create':
        scr_bookcase_create();
        break;
        
    case 'step':
        scr_bookcase_step();
        break;
        
    case 'animation end':
        scr_bookcase_animation_end();
        break;
        
    case 'draw':
        scr_bookcase_draw();
        break;
}

