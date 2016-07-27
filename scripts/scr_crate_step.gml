///scr_crate_step()

/**
 * Crate: On Update
 *
 * Added to the crate object's Step event.
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
        
        // this crate hasn't reached the "ground", so let the crates above know that we are all still falling
        // find crates above -> set 'falling_counter' to 'falling_count'
    }
    
    // reduce falling count
    falling_counter--;
}


// update the sprite
if (falling_counter > 0)
{
    sprite_index = spr_crate_falling;
}
else
{
    sprite_index = spr_crate;
}

