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

// if falling, check vertical collision against platform 1
if (my > 0)
{
    // if not already inside a platform 1
    if ( ! place_meeting(x + mx, y, obj_platform_1))
    {
        // check collision against the y-axis
        var collision_y = scr_entity_test_movement_collision(id, mx, my, obj_platform_1, 'y');
        if (collision_y[0])
        {
            my = collision_y[2];
            velocity_y = 0;
            entity_hit_platform_y = true;
        }
        collision_y = 0;
    }
}

// if falling, check vertical collision against platform 2
if (my > 0)
{
    // if not already inside a platform 2
    if ( ! place_meeting(x + mx, y, obj_platform_2))
    {
        var collision_y = scr_entity_test_movement_collision(id, mx, my, obj_platform_2, 'y');
        if (collision_y[0])
        {   
            my = collision_y[2];
            velocity_y = 0;
            entity_hit_platform_y = true;
        }
        collision_y = 0;
    }
}

