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

// create a placeholder object in this block's falling path
if (falling && placeholder == noone)
{
    placeholder = instance_create(x, bbox_bottom, placeholder_object);
    with (placeholder)
    {
        visible = false;
        
        // update width to match the parent block
        image_xscale = (other.sprite_width / sprite_width);
        
        // set the starting height and ending position
        placeholder_height = sprite_height;
        placeholder_end = y + placeholder_height;
        
        // scale the height by a factor of one until colliding with a wall or exceeding the limit
        var i = 0;
        while ( ! place_meeting(x, (y + placeholder_height), obj_wall) && i <= 5)
        {
            i += 1;
            placeholder_end = y + (placeholder_height * i);
        
            // update y scaling
            var divisor = (placeholder_end - y);
            image_yscale = (max(divisor, 1) / placeholder_height);
        }
        
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
        image_yscale = (max(divisor, 1) / placeholder_height);
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
    // is instance is standing on a wall or block
    var on_wall = place_meeting(x, y + 1, obj_wall);
    var on_block = place_meeting(x, y + 1, obj_block);
    grounded = max(on_wall, on_block);
    
    if ( ! grounded)
    {
        falling = true;
    }
    
    // reduce falling count
    falling_counter--;
}

