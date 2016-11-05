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
    if (global.PLAYER_KEY_ACTION || global.PLAYER_KEY_ATTACK_1 || global.PLAYER_KEY_ATTACK_2)
    {
        // clear inputs
        global.PLAYER_KEY_ACTION = false;
        global.PLAYER_KEY_ATTACK_1 = false;
        global.PLAYER_KEY_ATTACK_2 = false;
        
        // update the player and item
        scr_update_player_and_item(id, is_carrying_item, 'throw');
        
        exit;
    }
}

