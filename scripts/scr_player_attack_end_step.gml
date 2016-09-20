///scr_player_attack_end_step()

/**
 * Player Attack: On End of Update
 *
 * Called during this object's End Step event.
 */

// if this instance belongs to another
if (belongs_to != noone)
{
    // reposition to that instance
    image_xscale = belongs_to.image_xscale;
    x = belongs_to.x;
    y = belongs_to.y;
}

