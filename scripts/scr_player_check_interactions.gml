///scr_player_check_interactions()

/**
 * Player: Check Interactions
 *
 * Check if interacting with various objects.
 */

// if not carrying an item
if ( ! carrying)
{
    // check if colliding with an item
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

// check if colliding with a player cart object
if (place_meeting(x, y, obj_player_cart))
{
    with (obj_player_cart)
    {
        if (place_meeting(x, y, other.id))
        {
            is_colliding_with = other.id;
            
            // if the Action key was pressed
            if (PLAYER_KEY_ACTION)
            {
                // clear input
                PLAYER_KEY_ACTION = false;
                
                // add the Player Cart Menu object
                instance_create(0, 0, obj_player_cart_menu);
            }
        }
    }
}

