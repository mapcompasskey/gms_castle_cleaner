///scr_block_is_hurting()

/**
 * Block: Is Hurting
 *
 * On death, find blocks standing on this instance and tell them to start falling.
 */

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

if ( ! hurting && ! recovering)
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
                // if there are blocks standing ontop of this instance
                if (place_meeting(x, y - sprite_height, obj_block))
                {
                    with (obj_block)
                    {
                        if (id != other.id)
                        {
                            if (place_meeting(x, y + other.sprite_height, other.id))
                            {
                                falling = true;
                            }
                        }
                    }
                }
                
                // replace this instance with the dying version
                instance_create(x, y, dying_object);
                instance_destroy();
            }
        }
        
    }
}

