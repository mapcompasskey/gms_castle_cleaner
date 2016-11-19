///scr_entity_check_collision_with_platforms()

/**
 * Check if Colliding with Platforms
 *
 * Include in an object's End Step event.
 *
 * Only test collision against a platform if the instance is falling and only
 * if it is not already inside a platform. This can cause problems if platforms
 * are positioned where an instance can stand on one, then walk into another
 * raised platform. So you have to use two different platform objects anywhere
 * an instance could overlap them.
 */

entity_hit_platform_y = false;

// if falling, check vertical collision against platform
if (my > 0)
{
    // if not already inside a platform
    if ( ! place_meeting(x + mx, y, obj_platform))
    {
        // check vertical collision against platforms
        if (place_meeting(x + mx, y + my, obj_platform))
        {
            temp_my = 0;
            while ( ! place_meeting(x + mx, y + temp_my + sign(my), obj_platform))
            {
                temp_my += sign(my);
            }
            my = temp_my;
            velocity_y = 0;
            
            entity_hit_platform_y = true;
        }
    }
}

// if falling, check vertical collision against platform 2
if (my > 0)
{
    // if not already inside a platform 2
    if ( ! place_meeting(x + mx, y, obj_platform_2))
    {
        // check vertical collision against platforms
        if (place_meeting(x + mx, y + my, obj_platform_2))
        {
            temp_my = 0;
            while ( ! place_meeting(x + mx, y + temp_my + sign(my), obj_platform_2))
            {
                temp_my += sign(my);
            }
            my = temp_my;
            velocity_y = 0;
            
            entity_hit_platform_y = true;
        }
    }
}

