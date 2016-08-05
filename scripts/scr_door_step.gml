///scr_door_step()

/**
 * Door: On Update
 *
 * Added to the door object's Step event.
 */

// reset variable
show_text = false;

if (can_use_door)
{
    // if overlapping with the player object
    if (place_meeting(x, y, obj_player))
    {
        show_text = true;
        
        // if the UP key was released
        if (keyboard_check_released(vk_up))
        {
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

if ( ! can_use_door)
{
    //image_alpha = 0.5;
    sprite_index = closed_sprite;
    disabled_timer += TICK;
    
    // if the timer has ended
    if (disabled_timer >= disabled_time)
    {
        //image_alpha = 1.0;
        sprite_index = opened_sprite;
        can_use_door  = true;
        disabled_timer = 0;
    }
}

