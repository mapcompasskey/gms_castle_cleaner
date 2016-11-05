///scr_block_is_hurting()

/**
 * Block: Is Hurting
 *
 * On death, find blocks standing on this instance and tell them to start falling.
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
                dying = true;
                
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
                
                // if there is a placeholder object
                if (placeholder != noone)
                {
                    with (placeholder)
                    {
                        instance_destroy();
                    }
                    placeholder = noone;
                }
                
                // replace this instance with a dying block
                with (instance_create(x, y, dying_object))
                {
                    // set sprite and animation
                    sprite_index = other.dying_object_sprite;
                    image_index = 0;
                    image_speed = other.dying_object_speed
                }
                
                // destroy this object
                instance_destroy();
            }
        }
        
    }
}

