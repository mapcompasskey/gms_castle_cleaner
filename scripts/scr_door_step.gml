///scr_door_step()

/**
 * Door: On Update
 *
 * Called during this object's Step event.
 */

if ( ! can_use_door)
{
    sprite_index = closed_sprite;
    disabled_timer += global.TICK;
    
    // if the timer has ended
    if (disabled_timer >= disabled_time)
    {
        sprite_index = opened_sprite;
        can_use_door  = true;
        disabled_timer = 0;
    }
}

