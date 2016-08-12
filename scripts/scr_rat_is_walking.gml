///scr_rat_is_walking()

/**
 * Rat: Is Moving
 *
 */

if ( ! dying && ! hurting)
{
    if (key_left)
    {
        facing = LEFT;
        walking = true;
        velocity_x = speed_x * facing;
    }
    else if (key_right)
    {
        facing = RIGHT;
        walking = true;
        velocity_x = speed_x * facing;
    }
    else
    {
        walking = false;
        velocity_x = 0;
    }
}

