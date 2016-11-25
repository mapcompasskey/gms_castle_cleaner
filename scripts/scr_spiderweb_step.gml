///scr_spiderweb_step()

/**
 * Spider Web: On Update
 *
 * Added to this object's Step event.
 */

// check object state
scr_spiderweb_is_hurting();
scr_spiderweb_is_spawning();

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

