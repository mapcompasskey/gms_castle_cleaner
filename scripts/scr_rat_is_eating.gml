///scr_rat_is_eating()

/**
 * Rat: Is Eating
 *
 */

if ( ! dying && ! hurting && ! recovering)
{
    if (place_meeting(x, y, obj_cheese))
    {
        // get the cheese item
        var cheese = instance_place(x, y, obj_cheese);
        if (cheese != noone)
        {
            // destory the cheese item
            with (cheese)
            {
                instance_destroy();
            }
            
            // stop moving
            key_left = false;
            key_right = false;
        }
    }
}

