/**
 * Player: Is Crouching
 *
 */

if ( ! hurting && ! dying && ! jumping && ! attacking)
{
    // if grounded and pressing the DOWN button
    if (grounded && key_down)
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

