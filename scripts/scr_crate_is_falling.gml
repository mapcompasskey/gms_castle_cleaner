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

if (falling)
{
    // if there are crates above this one, tell them to start falling
    if (place_meeting(x, y - sprite_height, obj_crate))
    {
        with (obj_crate)
        {
            if (id != other.id)
            {
                if (place_meeting(x, y + other.sprite_height, other.id))
                {
                    falling = true;
                }
            }
        }
    }
    
    // reset falling counter
    falling_counter = falling_count;
    falling = false;
}

// if the object is falling or was previously falling
if (falling_counter > 0)
{
    // is object standing on a wall
    grounded = place_meeting(x, y + 1, obj_wall);
    
    if ( ! grounded)
    {
        falling = true;
    }
    
    // reduce falling count
    falling_counter--;
}

