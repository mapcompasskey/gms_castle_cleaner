///scr_crate_is_falling()

/**
 * Crate: Is Hurting
 *
 * Added to the crate object's Step event.
 *
 * Depending on the order of this object's step event, it could appear to be grounded on another crate that
 * is falling - which could prevent it from falling after it. So, after hitting the ground, continue to test
 * for another few steps to make sure it is grounded.
 */

// if the object is falling or was previously falling
if (falling_counter > 0)
{
    // is object standing on a wall
    grounded = place_meeting(x, y + 1, obj_wall);
    
    if ( ! grounded)
    {
        // reset falling counter
        falling_counter = falling_count;
        
        // if there are crates above this one
        if (place_meeting(x, y - sprite_height, obj_crate))
        {
            with (obj_crate)
            {
                if (id != other.id)
                {
                    if (place_meeting(x, y + other.sprite_height, other.id))
                    {
                        falling_counter = falling_count;
                    }
                }
            }
        }
        
    }
    
    // reduce falling count
    falling_counter--;
}

