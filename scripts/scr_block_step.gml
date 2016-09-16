///scr_block_step()

/**
 * Block: On Update
 *
 * Called during this object's Step event.
 */

// check object state
scr_block_is_hurting();
scr_block_is_falling();

// update object sprite
if (hurting)
{
    if (sprite_index != hurting_sprite)
    {
        sprite_index = hurting_sprite;
        image_index = 0;
        image_speed = 0;
    }
}
else if (falling_counter > 0)
{
    if (sprite_index != falling_sprite)
    {
        sprite_index = falling_sprite;
        image_index = 0;
        image_speed = 0;
    }
}
else
{
    if (sprite_index != idle_sprite)
    {
        sprite_index = idle_sprite;
        image_index = 0;
        image_speed = 0;
    }
}

