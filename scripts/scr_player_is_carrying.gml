///scr_player_is_carrying()

/**
 * Player: Is Carrying an Item
 *
 */

if (carrying)
{
    // if hurting
    if (hurting)
    {
        // drop item
        with (is_carrying_item)
        {
            is_being_carried_by = noone;
        }
        
        // update player
        carrying = false;
        is_carrying_item = noone;
        
        exit;
    }
    
    // if Action or Attack key was preseed
    if (PLAYER_KEY_ACTION || PLAYER_KEY_ATTACK_1 || PLAYER_KEY_ATTACK_2)
    {
        // clear inputs
        PLAYER_KEY_ACTION = false;
        PLAYER_KEY_ATTACK_1 = false;
        PLAYER_KEY_ATTACK_2 = false;
        
        // throw the item
        with (is_carrying_item)
        {
            velocity_x = (speed_x * other.facing);
            velocity_y = -(speed_y);
            is_being_carried_by = noone;
        }
        
        // update the player
        carrying = false;
        is_carrying_item = noone;
        
        exit;
    }
}

