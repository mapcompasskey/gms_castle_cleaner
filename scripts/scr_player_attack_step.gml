///scr_player_attack_step()

/**
 * Player Attack: On Update
 *
 * Added to this object's Step event.
 */

// if not the first or last frame of the animation
if (image_index >= 1 && (image_number - image_index) >= 1)
{
    // if colliding with enemy objects
    if (place_meeting(x, y, obj_enemy))
    {
        with (obj_enemy)
        {
            if (place_meeting(x, y, other.id))
            {
                is_colliding_with = other.id;
            }
        }
    }
    
    // if colliding with block objects
    if (place_meeting(x, y, obj_block))
    {
        with (obj_block)
        {
            if (place_meeting(x, y, other.id))
            {
                // if the player broom is not broken
                if ( ! global.PLAYER_BROOM_IS_BROKEN)
                {
                    is_colliding_with = other.id;
                    
                    // if the block is not recovering
                    if ( ! hurting && ! recovering)
                    {
                        // decrease player broom health and check if its broken
                        global.PLAYER_BROOM_CURRENT_HEALTH--;
                        if (global.PLAYER_BROOM_CURRENT_HEALTH < 1)
                        {
                            global.PLAYER_BROOM_IS_BROKEN = true;
                            global.PLAYER_BROOM_CURRENT_HEALTH = 0;
                        }
                    }
                }
                
            }
        }
    }
    
    // if colliding with bookcases objects
    if (place_meeting(x, y, obj_bookcase))
    {
        with (obj_bookcase)
        {
            if (place_meeting(x, y, other.id))
            {
                is_colliding_with = other.id;
            }
        }
    }
    
    // if colliding with spider web objects
    if (place_meeting(x, y, obj_spiderweb))
    {
        with (obj_spiderweb)
        {
            if (place_meeting(x, y, other.id))
            {
                is_colliding_with = other.id;
            }
        }
    }
    
}

