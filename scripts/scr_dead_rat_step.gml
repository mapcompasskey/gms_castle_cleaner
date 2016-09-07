///scr_dead_rat_step()

/**
 * Dead Rat: On Update
 *
 * Called during this object's Step event.
 */
 
// if object has been disabled
if ( ! can_be_carried)
{
    disable_timer += TICK;
    
    // if the timer has ended
    if (disable_timer >= disable_time)
    {
        can_be_carried = true;
        disable_timer = 0;
    }
}

// check if the carried state has changed
if (was_being_carried_by != is_being_carried_by)
{
    // if no longer being carried
    if (is_being_carried_by == noone)
    {
        can_be_carried = false;
    }
    was_being_carried_by = is_being_carried_by;
}

