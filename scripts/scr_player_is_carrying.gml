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
        // update the player and item
        scr_update_player_and_item(id, is_carrying_item, 'drop');
        
        exit;
    }
    
    // if Action or Attack key was preseed
    if (PLAYER_KEY_ACTION || PLAYER_KEY_ATTACK_1 || PLAYER_KEY_ATTACK_2)
    {
        // clear inputs
        PLAYER_KEY_ACTION = false;
        PLAYER_KEY_ATTACK_1 = false;
        PLAYER_KEY_ATTACK_2 = false;
        
        // update the player and item
        scr_update_player_and_item(id, is_carrying_item, 'throw');
        
        exit;
    }
}

