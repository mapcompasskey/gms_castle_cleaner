///scr_player_is_hurting()

/**
 * Player: Is Hurting
 *
 * Player loses control when hurting. Player is invincible while recovering.
 */

// if hurting
if (hurting)
{
    // regain control when landing
    if (grounded)
    {
        hurting = false;
    }
}

if (recovering)
{
    //image_alpha = 0.5;
    recovering_cooldown_timer += TICK;
    
    // if the timer has ended
    if (recovering_cooldown_timer >= recovering_cooldown_time)
    {
        //image_alpha = 1.0;
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
        
        /*
        // apply damage
        if (is_colliding_with.damage)
        {
            current_health -= is_colliding_with.damage;
            if (current_health <= 0)
            {
                //current_health = maximum_health;
                instance_destroy();
            }
        }
        */
        
        /*
        // apply horizontal knockback
        var knockback_x = 2;
        if (x < is_colliding_with.x)
        {
            knockback_x = -knockback_x;
        }
        velocity_x = knockback_x;
        
        // apply vertical knockback
        velocity_y = -3;
        grounded = false;
        */
    }
}


