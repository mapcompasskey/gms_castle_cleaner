///scr_rat_is_hurting()

/**
 * Rat: Is Hurting
 *
 */

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
        key_left = (velocity_x < 0 ? true : false);
        key_right = (velocity_x < 0 ? false : true);
    }
}

if (hurting && grounded)
{
    hurting = false;
}

if (recovering)
{
    recovering_cooldown_timer += TICK;
    
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
    flashing_timer += TICK;
    
    if (flashing_timer > flashing_time)
    {
        flashing_timer = 0;
        is_flashing = !is_flashing;
    }
}

if ( ! dying && ! hurting && ! recovering)
{
    // check if colliding with a mouse trap
    // * need to check with all mouse traps incase an unbaited trap is ontop of a baited one
    if (place_meeting(x, y, obj_mouse_trap))
    {
        with (obj_mouse_trap)
        {
            // if the mouse trap is baited and not dying
            if (has_cheese && ! dying)
            {
                // if the mouse trap is colliding with the rat
                if (place_meeting(x, y, other.id))
                {
                    // if the rat isn't dying
                    if ( ! other.dying)
                    {
                        // update mouse trap
                        dying = true;
                        
                        // update rat
                        other.dying = true;
                    }
                }
            }
        }
    }
}

if (dying)
{
    // create a dead rat item
    instance_create(x, (y - 2), obj_dead_rat);
    
    // mark rat for destruction
    instance_destroy();
}

