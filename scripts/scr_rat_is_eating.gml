///scr_rat_is_eating()

/**
 * Rat: Is Eating
 *
 */

if (eating)
{
    eating_timer += TICK;
    
    if (eating_timer > eating_time)
    {
        eating = 0;
        eating_timer = 0;
        action_time = 0;
    }
}

if ( ! dying && ! hurting && ! recovering && ! eating)
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
            
            eating = true;
        }
    }
}

if (dying || hurting)
{
    eating = false;
}

