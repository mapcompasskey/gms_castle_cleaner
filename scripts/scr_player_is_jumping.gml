///scr_player_is_jumping()

/**
 * Player: Is Jumping or Falling
 *
 */

if ( ! hurting && ! dying && ! crouching && ! attacking)
{
    // if jumping again while in the air
    if (jumping && jumps < jumpsmax && PLAYER_KEY_JUMP_PRESSED)
    {
        jumps++;
        velocity_y = -speed_y;
    }
    
    // if grounded and just pressed the JUMP button
    if ((grounded || on_ladder) && ! jumping && PLAYER_KEY_JUMP_PRESSED)
    {
        jumping = true;
        grounded = false;
        velocity_y = -speed_y;
    }
        
    // reduce jump height
    if (jumping && velocity_y < 0 && PLAYER_KEY_JUMP_RELEASED)
    {
        velocity_y = velocity_y / 2;
    }
    
    // if falling
    if (velocity_y > 0 && ! grounded && ! on_ladder)
    {
        falling = true;
    }
    
    // if grounded after jumping or falling
    if ((jumping || falling) && (grounded || on_ladder))
    {
        jumps = 0;
        jumping = false;
        falling = false;
    }
}

