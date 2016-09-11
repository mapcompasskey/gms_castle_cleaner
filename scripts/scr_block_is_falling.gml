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

if (falling && placeholder == noone)
{
    show_debug_message('make placeholder');
    placeholder = instance_create(x, bbox_bottom, placeholder_object);
    with (placeholder)
    {
        image_xscale = (other.sprite_width / sprite_width);
        //image_yscale = 2;
    }
}
else if (falling && placeholder != noone)
{
    with (placeholder)
    {
        x = other.x;
        y = other.bbox_bottom;
    }
}
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

