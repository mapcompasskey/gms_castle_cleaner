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
        
        return false;
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
        
        return false;
    }
    
    /*
    // if colliding with Player Cart
    if (place_meeting(x, y, obj_player_cart))
    {
        // drop item
        with (is_carrying_item)
        {
            is_being_carried_by = noone;
            instance_destroy();
        }
        
        // update player
        carrying = false;
        is_carrying_item = noone;
        
        return false;
    }
    */
}

/*
if ( ! carrying)
{
    // if colliding with an item
    if (place_meeting(x, y, obj_item))
    {
        with (obj_item)
        {
            if (can_be_carried)
            {
                // if this item is colliding with the player
                if (place_meeting(x, y, other.id))
                {
                    is_colliding_with = other.id;
                    
                    // if the Action key was pressed
                    if (PLAYER_KEY_ACTION)
                    {
                        // clear input
                        PLAYER_KEY_ACTION = false;
                        
                        // update the item
                        is_being_carried_by = other.id;
                        
                        // update the player
                        other.carrying = true;
                        other.is_carrying_item = id;
                    }
                }
            }
        }
    }
}
*/

