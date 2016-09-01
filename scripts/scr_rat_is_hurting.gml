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
        var knockback_x = 2;
        if (x < is_colliding_with.x)
        {
            knockback_x = -knockback_x;
        }
        velocity_x = knockback_x;
        
        // apply vertical knockback
        velocity_y = -3;
        grounded = false;
        
        // move away from the attack
        key_left = false;
        key_right = true;
        if (velocity_x < 0)
        {
            key_left = true;
            key_right = false;
        }
    }
}

if (hurting && grounded)
{
    hurting = false;
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
    
    //show_debug_message(string(recovering_cooldown_timer) + ', ' + string(recovering_cooldown_timer%2));
    //show_debug_message(string(recovering_cooldown_timer) + ', ' + string(recovering_cooldown_timer & 1));
}

//image_blend = c_white;
//image_alpha = 1;
if (recovering)
{
    flashing_timer += TICK;
    
    if (flashing_timer > flashing_time)
    {
        flashing_timer = 0;
        is_flashing = !is_flashing;
        /*
        if (flashing_color < 1)
        {
            flashing_color = 1;
        }
        else
        {
            flashing_color = 0.25;
        }
        image_alpha = flashing_color;
        */
        /*
        if (flashing_color == c_white)
        {
            flashing_color = c_red;
            flashing_color = c_black;
        }
        else
        {
            flashing_color = c_white;
        }
        image_blend = flashing_color;
        */
    }
}
/*
if (hurting)
{
    image_blend = c_red;
    //image_blend = c_yellow;
    //image_blend = make_colour_rgb(255, 200, 20);
}
else
{
    image_blend = c_white;
}
*/

