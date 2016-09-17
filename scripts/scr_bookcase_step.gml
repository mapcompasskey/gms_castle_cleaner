///scr_bookcase_step()

/**
 * Bookcase: On Update
 *
 * Called during this object's Step event.
 */

// check object state
scr_bookcase_is_hurting();

// update object sprite
if (dying)
{
    if (sprite_index != dying_sprite)
    {
        sprite_index = dying_sprite;
        image_index = 0;
        image_speed = dying_speed;
    }
}
else
{
    if (sprite_index != idle_sprite)
    {
        sprite_index = idle_sprite;
        image_index = 0;
        image_speed = idle_speed;
    }
}

