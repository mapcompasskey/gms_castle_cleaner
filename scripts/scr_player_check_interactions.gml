///scr_player_check_interactions()

/**
 * Player: Check Interactions
 *
 */


/**
 * Check Interactions with Items
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


/**
 * Check Interactions with Player Carts
 */

// check if colliding with a player cart
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


/**
 * Check Interactions with Doors
 */

// check if colliding with a door
if (place_meeting(x, y, obj_door))
{
    with (obj_door)
    {
        if (place_meeting(x, y, other.id))
        {
            if (can_use_door)
            {
                is_colliding_with = other.id;
                
                // if the Action key was pressed
                if (PLAYER_KEY_ACTION)
                {
                    // clear inputs
                    PLAYER_KEY_ACTION = false;
                    io_clear();
                    
                    // check if the room exist
                    if (room_exists(exit_room_id))
                    {
                        // update globals
                        PREVIOUS_DOOR_CODE = CURRENT_DOOR_CODE;
                        PREVIOUS_ROOM_ID = CURRENT_ROOM_ID;
                        CURRENT_DOOR_CODE = exit_door_code;
                        CURRENT_ROOM_ID = exit_room_id;
                        
                        // switch rooms
                        room_goto(exit_room_id);
                    }
                    
                }
            }
        }
    }
}

