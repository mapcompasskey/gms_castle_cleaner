///scr_spider_is_walking()

/**
 * Spider: Is Moving
 *
 */

if ( ! dying && ! hurting)
{
    if (key_left)
    {
        facing = global.LEFT;
        walking = true;
        velocity_x = speed_x * facing;
    }
    else if (key_right)
    {
        facing = global.RIGHT;
        walking = true;
        velocity_x = speed_x * facing;
    }
    else
    {
        walking = false;
        velocity_x = 0;
    }
}

