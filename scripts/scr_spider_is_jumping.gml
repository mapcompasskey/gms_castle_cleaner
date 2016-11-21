///scr_spider_is_jumping()

/**
 * Spider: Is Jumping or Falling
 *
 */

if ( ! dying && ! hurting)
{
    // if grounded and not jumping
    if (grounded && ! jumping)
    {
        jump_timer += global.TICK;
        if (jump_timer > jump_time)
        {
            jump_timer = 0;
            key_jump_pressed = true;
            jump_time = random_range(30, 120) // 0.5 - 2 seconds
        }
    }
    
    // if grounded and just pressed the JUMP button
    if (grounded && walking && ! jumping && key_jump_pressed)
    {
        jumping = true;
        grounded = false;
        velocity_y = -speed_y;
        key_jump_pressed = false;
    }
    
    // if falling
    if (velocity_y > 0 && ! grounded)
    {
        falling = true;
    }
    
    // if grounded after jumping or falling
    if ((jumping || falling) && grounded)
    {
        jumping = false;
        falling = false;
    }
}

