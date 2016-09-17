///scr_block_events(event, object)

/**
 * Block: Events Controller
 *
 * Added to each of this object's events.
 */

switch(argument0)
{
    case 'create':
        scr_block_create();
        switch(argument1)
        {
            case 'crate':
                idle_sprite = spr_crate;
                break;
                
            case 'crate 2a':
                idle_sprite = spr_crate_2a;
                break;
                
            case 'crate 2b':
                idle_sprite = spr_crate_2b;
                break;
                
            case 'crate 2c':
                idle_sprite = spr_crate_2c;
                break;
                
            case 'crate 2d':
                idle_sprite = spr_crate_2d;
                break;
                
            case 'crate 4x':
                idle_sprite = spr_crate_4x;
                dying_object_sprite = spr_dying_tile_4x;
                break;
                
            case 'barrel':
                idle_sprite = spr_barrel;
                break;
        }
        break;
        
    case 'step':
        scr_block_step();
        break;
        
    case 'end step':
        scr_block_end_step();
        break;
        
    case 'draw':
        scr_block_draw();
        break;
}

