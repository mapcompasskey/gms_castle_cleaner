///scr_player_check_interactions()

/**
 * Player: Check Interactions
 *
 */


/**
 * Check Interactions with Items
 *
 * Check if colliding with an item and picking it up.
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
                        
                        exit;
                    }
                }
            }
        }
    }
}


/**
 * Check Interactions with Player Carts
 *
 * Check if colliding with the player cart. If carrying an item and interacting with the
 * cart, the item will be placed "inside" it. If not carrying anything, then the player
 * cart menu will be opened.
 */

var open_cart = false;

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
                open_cart = true;
            }
        }
    }
}

// if interacting with the cart and carrying an item
if (open_cart && carrying)
{
    with (is_carrying_item)
    {
        // if dead rat object, increment the global counter
        if (object_get_name(object_index) == 'obj_dead_rat')
        {
            DEAD_RAT_ITEMS_COLLECTED++;
            
            // update the player
            other.carrying = false;
            other.is_carrying_item = noone;
            
            // update the item
            is_being_carried_by = noone;
            instance_destroy();
            
            open_cart = false;
        }
    }
}

// if interacting with the cart
if (open_cart)
{
    // add the Player Cart Menu object
    instance_create(0, 0, obj_player_cart_menu);
    open_cart = false;    
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

