///scr_player_attack_animation_end()

/**
 * Player Attack: On Animation End
 *
 * Added to this object's Animation End event.
 */

// pause the animation on the last frame and prevent it from looping
if (image_speed != 0)
{
    image_speed = 0;
    image_index = image_number - 1;
}

