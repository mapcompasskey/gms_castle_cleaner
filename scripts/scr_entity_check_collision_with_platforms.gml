///scr_entity_check_collision_with_platforms()

/**
 * Check if Colliding with Platforms
 *
 * Include in an object's End Step event.
 *
 * Only test collision against a platform if the instance is falling and only
 * if it is not already inside a platform. This can cause problems if platforms
 * are positioned where an instance can stand on one, while the upper part of its
 * mask is inside a higher platform. So you have to use two different platform
 * objects anywhere an instance could overlap them.
 *
 * This is by far the easiest solution I've tested.
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
            var arr;
            arr[2] = 1;
            arr[1] = 0.1;
            arr[0] = 0.01;
            
            var step_y = 0;
            var temp_my = 0;
            
            // find how far the instance can move vertically before colliding
            for (var i = 0; i < array_length_1d(arr); i++)
            {
                step_y = (sign(my) * arr[i]);
                while ( ! place_meeting((x + mx), (y + temp_my + step_y), obj_platform) && abs(temp_my) < abs(my))
                {
                    temp_my += step_y;
                }
            }
            
            // update the 'my' value and reset the y velocity
            my = temp_my;
            velocity_y = 0;
            
            entity_hit_platform_y = true;
            
            arr = 0;
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
            var arr;
            arr[2] = 1;
            arr[1] = 0.1;
            arr[0] = 0.01;
            
            var step_y = 0;
            var temp_my = 0;
            
            // find how far the instance can move vertically before colliding
            for (var i = 0; i < array_length_1d(arr); i++)
            {
                step_y = (sign(my) * arr[i]);
                while ( ! place_meeting((x + mx), (y + temp_my + step_y), obj_platform_2) && abs(temp_my) < abs(my))
                {
                    temp_my += step_y;
                }
            }
            
            // update the 'my' value and reset the y velocity
            my = temp_my;
            velocity_y = 0;
            
            entity_hit_platform_y = true;
            
            arr = 0;
        }
    }
}

