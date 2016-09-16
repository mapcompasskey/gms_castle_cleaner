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
if (sprite_index != idle_sprite)
{
    sprite_index = idle_sprite;
    image_index = 0;
    image_speed = 0;
}

