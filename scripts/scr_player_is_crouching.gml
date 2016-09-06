///scr_player_is_crouching()

/**
 * Player: Is Crouching
 *
 */

if ( ! hurting && ! dying && ! jumping && ! attacking && ! carrying)
{
    // if grounded and pressing the DOWN button
    if ((grounded || on_ladder) && PLAYER_KEY_DOWN)
    {
        crouching = true;
        velocity_x = 0;
    }
    
    // if crouching and no longer pressing the DOWN button
    if (crouching && ! PLAYER_KEY_DOWN)
    {
        crouching = false;
    }
}

