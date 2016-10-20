///scr_player_check_interactions()

/**
 * Player: Check Interactions
 *
 */


/**
 * Check Interactions with Items
 *
 * Check if colliding with an item and picking it up. Some items can interact
 * with other items if the player is carrying one of them.
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
                    // highlight the item
                    is_colliding_with = other.id;
                    
                    // if the Action key was pressed
                    if (PLAYER_KEY_ACTION)
                    {
                        // clear input
                        PLAYER_KEY_ACTION = false;
                        
                        // update the player and item
                        scr_update_player_and_item(other.id, id, 'pickup');
                        
                        exit;
                    }
                }
            }
        }
    }
}

// if carrying an item
if (carrying && is_carrying_item != noone)
{
    // if carrying the cheese item
    if (object_get_name(is_carrying_item.object_index) == 'obj_cheese')
    {
        // check if colliding with a mouse trap item
        var mouse_trap_item = instance_place(x, y, obj_mouse_trap);
        if (mouse_trap_item != noone)
        {
            if ( ! mouse_trap_item.has_cheese)
            {
                // highlight the mouse trap item
                with (mouse_trap_item)
                {
                    is_colliding_with = other.id;
                }
                
                // if the Action key was pressed
                if (PLAYER_KEY_ACTION)
                {
                    // clear input
                    PLAYER_KEY_ACTION = false;
                    
                    // update the mouse trap item
                    mouse_trap_item.has_cheese = true;
                    
                    // update the player and cheese item
                    scr_update_player_and_item(id, is_carrying_item, 'destroy');
                    
                    exit;
                }
            }
        }
    }
    
    // if carrying the mouse trap item
    if (object_get_name(is_carrying_item.object_index) == 'obj_mouse_trap')
    {
        // if the mouse trap is unbaited
        if ( ! is_carrying_item.has_cheese)
        {
            // check if colliding with a cheese item
            var cheese_item = instance_place(x, y, obj_cheese);
            if (cheese_item != noone)
            {
                // highlight the cheese item
                cheese_item.is_colliding_with = id;
                
                // if the Action key was pressed
                if (PLAYER_KEY_ACTION)
                {
                    // clear input
                    PLAYER_KEY_ACTION = false;
                    
                    // destory the cheese item
                    with (cheese_item)
                    {
                        instance_destroy();
                    }
                    
                    // update the mouse trap item
                    is_carrying_item.has_cheese = true;
                    
                    exit;
                }
            }
        }
    }
}


/**
 * Check Interactions with Player Carts
 *
 * Check if colliding with the player cart. If carrying an item and interacting with the
 * cart, the item could be placed "inside" it. If not carrying anything, then the player
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
        // if dead rat item
        if (object_get_name(object_index) == 'obj_dead_rat')
        {
            // increment the global counter
            DEAD_RAT_ITEMS_COLLECTED++;
            
            // update the player and item
            scr_update_player_and_item(other.id, id, 'destroy');
            
            // prevent the cart from opening
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

