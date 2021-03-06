///scr_spiderweb_is_hurting()

/**
 * Spider Web: Is Hurting
 *
 */

if (recovering)
{
    recovering_cooldown_timer += global.TICK;
    
    // if the timer has ended
    if (recovering_cooldown_timer >= recovering_cooldown_time)
    {
        hurting = false;
        recovering = false;
        is_colliding_with = noone;
        recovering_cooldown_timer = 0;
    }
}

if ( ! dying && ! hurting && ! recovering)
{
    if (is_colliding_with != noone)
    {
        hurting = true;
        recovering = true;
        
        // apply damage
        if (is_colliding_with.damage)
        {
            current_health -= is_colliding_with.damage;
            if (current_health <= 0)
            {
                hurting = false;
                recovering = false;
                dying = true;
            }
        }
        
    }
}

