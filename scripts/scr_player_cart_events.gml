///scr_player_cart_events(event)

/**
 * Player Cart: Events Controller
 *
 * Added to each of this object's events.
 */

switch(argument0)
{
    case 'create':
        scr_player_cart_create();
        break;
        
    case 'draw':
        scr_player_cart_draw();
        break;
}

