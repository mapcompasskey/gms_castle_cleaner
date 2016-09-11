///scr_block_is_falling()

/**
 * Block: Is Falling
 *
 * Depending on the order of this object's step event, it could appear to be grounded on another block that
 * is falling - which could prevent it from falling after it. So, after hitting the ground, continue to test
 * for another few steps to make sure it is grounded.
 */

if (dying)
{
    exit;
}

// create a placeholder object in this block's fall path
if (falling && placeholder == noone)
{
    placeholder = instance_create(x, bbox_bottom, placeholder_object);
    with (placeholder)
    {
        // update width to match the parent block
        image_xscale = (other.sprite_width / sprite_width);
        
        // determine the y scaling for the placeholder
        // start with 2x as that's the most it could fall
        placeholder_height = sprite_height;
        placeholder_end = (y + (sprite_height * 2));
        
        // get as close to a lower wall as possible
        if (place_meeting(x, (y + sprite_height), obj_wall))
        {
            temp_my = 0;
            while ( ! place_meeting(x, y + temp_my + 1, obj_wall))
            {
                temp_my += 1;
            }
            placeholder_end = y + sprite_height + temp_my;
        }
        
        // get the y scaling
        var divisor = (placeholder_end - y);
        if (divisor < 5)
        {
            // fall distance doesn't need to go below 5
            divisor = 5;
        }
        image_yscale = (divisor / placeholder_height);
    }
}

// update the placholder object's position and height
else if (falling && placeholder != noone)
{
    with (placeholder)
    {
        x = other.x;
        y = other.bbox_bottom;
        
        // update the y scaling from the new y position to the end position
        var divisor = (placeholder_end - y);
        if (divisor < 5)
        {
            divisor = 5;
        }
        image_yscale = (divisor / placeholder_height);
    }
}

// destroy the placeholder object
else if ( ! falling && placeholder != noone)
{
    with (placeholder)
    {
        instance_destroy();
    }
    placeholder = noone;
}

if (falling)
{
    // if there are blocks above this one, tell them to start falling
    if (place_meeting(x, y - sprite_height, obj_block))
    {
        with (obj_block)
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

// if the instance is falling or was previously falling
if (falling_counter > 0)
{
    // is instance is standing on a wall
    grounded = place_meeting(x, y + 1, obj_wall);
    
    if ( ! grounded)
    {
        falling = true;
    }
    
    // reduce falling count
    falling_counter--;
}

