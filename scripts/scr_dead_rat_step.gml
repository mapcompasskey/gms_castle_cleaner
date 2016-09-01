///scr_dead_rat_step()

/**
 * Dead Rat: On Update
 *
 * Called during this object's Step event.
 */

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);

/**
 * Check for Player Collision
 */

// reset player collision variable
player_collision = false;

// if not being carried
if ( ! is_being_carried)
{
    if (can_use_item)
    {
        // if overlapping with the player object
        if (place_meeting(x, y, obj_player))
        {
            player_collision = true;
            
            // if the UP key was released
            if (keyboard_check_released(vk_up))
            {
                with (obj_player)
                {
                    // if the player object is not already carrying an item
                    if (is_carrying_item == noone)
                    {
                        carrying = true;
                        is_carrying_item = other.id;
                        other.is_being_carried = true;
                    }
                }
            }
        }
    }
}


/**
 * Update Object Sprite
 */

if (player_collision)
{
    image_index = 1;
}
else
{
    image_index = 0;
}

