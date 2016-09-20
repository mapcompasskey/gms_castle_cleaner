///scr_player_attack_events(event)

/**
 * Player Attack: Events Controller
 *
 * Added to each of this object's events.
 */

switch(argument0)
{
    case 'create':
        scr_player_attack_create();
        break;
        
    case 'step':
        scr_player_attack_step();
        break;
        
    case 'end step':
        scr_player_attack_end_step();
        break;
        
    case 'animation end':
        scr_player_attack_animation_end();
        break;
}

