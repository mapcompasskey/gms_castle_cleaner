///scr_entity_check_collision_with_platforms()

/**
 * Check if Colliding with Platforms
 *
 * Include in an object's End Step event.
 */

/*
 this works by testing with platform collision only if falling and only
 if not already inside a platform. it fixes the issue of the player overlapping
 multiple platforms by making more than one type of platform and placing them
 in a room so that the play can't overlap them - which isn't ideal because it
 requires careful placement of the different types of platforms to insure the
 player can't overlap two similar types.
*/

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
        }
    }
}

