///scr_spider_is_hurting()

/**
 * Spider: Is Hurting
 *
 */

if ( ! dying && ! hurting && ! recovering)
{
    if (is_colliding_with != noone)
    {
        hurting = true;
        recovering = true;
        
        // apply horizontal knockback
        var knockback_x = 3;
        if (x < is_colliding_with.x)
        {
            knockback_x = -knockback_x;
        }
        velocity_x = knockback_x;
        
        // apply vertical knockback
        velocity_y = -2;
        grounded = false;
        
        // move away from the attack
        key_left = false;
        key_right = true;
        if (velocity_x < 0)
        {
            key_left = true;
            key_right = false;
        }
        
        // apply damage
        if (is_colliding_with.damage)
        {
            current_health -= is_colliding_with.damage;
            if (current_health <= 0)
            {
                dying = true;
                //hurting = false;
                recovering = false;
                
                // update spider web spawner
                if (spiderweb_id != noone)
                {
                    if (instance_exists(spiderweb_id))
                    {
                        spiderweb_id.spawn_counter -= 1;
                        spiderweb_id = noone;
                    }
                }
                
            }
        }
    }
}

if ( ! dying)
{
    if (hurting && grounded)
    {
        hurting = false;
    }
    
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
    
    if (recovering)
    {
        flashing_timer += global.TICK;
        
        if (flashing_timer > flashing_time)
        {
            flashing_timer = 0;
            is_flashing = !is_flashing;
        }
    }
}

