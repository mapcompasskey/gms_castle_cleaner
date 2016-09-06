///scr_player_is_walking()

/**
 * Player: Is Moving
 *
 */

if ( ! dying && ! hurting && ! crouching)
{    
    if (PLAYER_KEY_LEFT)
    {
        facing = LEFT;
        walking = true;
        velocity_x = speed_x * facing;
    }
    else if (PLAYER_KEY_RIGHT)
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
    
    // reduce movement speed if attacking
    if (attacking)
    {
        velocity_x *= 0.5;
    }
}

