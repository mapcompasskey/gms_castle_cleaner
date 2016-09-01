///scr_player_is_crouching()

/**
 * Player: Is Crouching
 *
 */

if ( ! hurting && ! dying && ! jumping && ! attacking && ! carrying)
{
    // if grounded and pressing the DOWN button
    //if (grounded && key_down)
    if ((grounded || on_ladder) && key_down)
    {
        crouching = true;
        velocity_x = 0;
    }
    
    // if crouching and no longer pressing the DOWN button
    if (crouching && ! key_down)
    {
        crouching = false;
    }
}

