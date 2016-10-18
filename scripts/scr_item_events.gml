///scr_item_events(event)

/**
 * Item: Events Controller
 *
 * Base Create event call for Item objects.
 * Added to each of this object's events.
 */

var obj_name = object_get_name(object_index);
     
switch(argument0)
{
    case 'create':
        scr_item_create();
        
        switch (obj_name)
        {
            case 'obj_dead_rat':
                scr_dead_rat_create();
                break;
                
            case 'obj_mouse_trap':
                scr_mouse_trap_create();
                break;
                
            case 'obj_cheese':
                scr_cheese_create();
                break;
        }
        break;
        
    case 'step':
        scr_item_step();
        
        switch (obj_name)
        {
            case 'obj_mouse_trap':
                scr_mouse_trap_step();
                break;
        }
        break;
        
    case 'end step':
        scr_item_end_step();
        break;
        
    case 'draw':
        scr_item_draw();
        break;
}

