///scr_item_events(event)

/**
 * Item: Events Controller
 *
 * Base Create event call for Item objects.
 * Added to each of this object's events.
 */

switch(argument0)
{
    case 'create':
        scr_item_create();
        break;
        
    case 'step':
        scr_item_step();
        break;
        
    case 'end step':
        scr_item_end_step();
        break;
        
    case 'draw':
        scr_item_draw();
        break;
}

