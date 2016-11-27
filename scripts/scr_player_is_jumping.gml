///scr_player_is_jumping()

/**
 * Player: Is Jumping or Falling
 *
 */

if ( ! hurting && ! dying && ! crouching && ! attacking)
{
    // if jumping again while in the air
    if (jumping && jumps < jumpsmax && global.PLAYER_KEY_JUMP_PRESSED)
    {
        jumps++;
        falling = false;
        velocity_y = -speed_y;
    }
    
    // if grounded and just pressed the JUMP button
    if (grounded && ! jumping && global.PLAYER_KEY_JUMP_PRESSED)
    {
        jumping = true;
        grounded = false;
        velocity_y = -speed_y;
    }
    
    // reduce jump height
    if (jumping && velocity_y < 0 && global.PLAYER_KEY_JUMP_RELEASED)
    {
        velocity_y = velocity_y / 2;
    }
    
    // if falling
    if (velocity_y > 0 && ! grounded)
    {
        falling = true;
    }
    
    // if grounded after jumping or falling
    if ((jumping || falling) && grounded)
    {
        jumps = 0;
        jumping = false;
        falling = false;
    }
}

