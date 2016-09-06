///scr_player_events(event)

/**
 * Player: Events Controller
 *
 * Added to each of this object's events.
 */

switch(argument0)
{
    case 'create':
        scr_player_create();
        break;
        
    case 'step':
        scr_player_step();
        break;
        
    case 'end step':
        scr_player_end_step();
        break;
        
    case 'room start':
        scr_player_room_start();
        break;
        
    case 'animation end':
        scr_player_animation_end();
        break;
        
    case 'draw':
        scr_player_draw();
        break;
}

