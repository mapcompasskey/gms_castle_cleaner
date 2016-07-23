///scr_player_cart_step()

/**
 * Player Cart: On Update
 *
 * Added to the player cart object's Step event.
 */

// reset variable
show_text = false;

// if overlapping with the player object
if (place_meeting(x, y, obj_player))
{
    show_text = true;
    
    // if the UP key was released
    if (keyboard_check_released(vk_up))
    {
        io_clear();
        
        // add the Player Cart Menu object
        instance_create(0, 0, obj_player_cart_menu);
    }
}

