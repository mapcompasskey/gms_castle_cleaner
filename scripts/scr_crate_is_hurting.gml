///scr_crate_is_hurting()

/**
 * Crate: Is Hurting
 *
 * On death, find crates standing on this instance and tell them to start falling.
 */

if (recovering)
{
    image_alpha = 0.5;
    recovering_cooldown_timer += TICK;
    
    // if the timer has ended
    if (recovering_cooldown_timer >= recovering_cooldown_time)
    {
        image_alpha = 1.0;
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
                // if there are crates standing ontop of this crate, collect their ids
                if (place_meeting(x, y - sprite_height, obj_crate))
                {
                    with (obj_crate)
                    {
                        if (id != other.id)
                        {
                            if (place_meeting(x, y + other.sprite_height, other.id))
                            {
                                // add this crate to the list
                                ds_list_add(other.crates_above, id);
                            }
                        }
                    }
                }
                
                // destory this crate
                instance_create(x, y, obj_crate_dying);
                instance_destroy();
                
                // loop through the list and tell each crate to start falling
                for (var i = 0; i < ds_list_size(crates_above); i++)
                {
                    var crate_id = ds_list_find_value(crates_above, i);
                    if (crate_id != noone)
                    {
                        with (crate_id)
                        {
                            falling = true;
                            
                            // push the crate down a little bit to prevent the player from moving into where its going to fall
                            var drop_y = 5;
                            var temp_y = 0;
                            
                            // check vertical collision
                            if (place_meeting(x, y + drop_y, obj_wall))
                            {
                                while ( ! place_meeting(x, y + temp_y + sign(drop_y), obj_wall))
                                {
                                    temp_y += sign(drop_y);
                                }
                                drop_y = temp_y;
                            }
                            
                            y += drop_y;
                        }
                    }
                }
                
            }
        }
        
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

