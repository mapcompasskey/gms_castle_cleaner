///scr_block_events(event, object)

/**
 * Block: Events Controller
 *
 * Added to each of this object's events.
 */

switch(argument0)
{
    case 'create':
        switch(argument1)
        {
            case 'crate':
                scr_crate_create();
                break;
                
            case 'crate 2a':
                scr_crate_2a_create();
                break;
                
            case 'crate 2b':
                scr_crate_2b_create();
                break;
                
            case 'crate 2c':
                scr_crate_2c_create();
                break;
                
            case 'crate 2d':
                scr_crate_2d_create();
                break;
                
            case 'crate 2x':
                scr_crate_2x_create();
                break;
                
            case 'barrel':
                scr_barrel_create();
                break;
                
            case 'block':
            default:
                scr_block_create();
        }
        break;
        
    case 'step':
        scr_block_step();
        break;
        
    case 'end step':
        scr_block_end_step();
        break;
        
    //case 'draw':
        //scr_block_draw();
        //break;
}
