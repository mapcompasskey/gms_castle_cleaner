///scr_block_step()

/**
 * Block: On Update
 *
 * Added to the block object's Step event.
 */


/**
 * Check Object State
 */

scr_block_is_hurting();
scr_block_is_falling();


/**
 * Update Object Sprite
 */

if (falling_counter > 0)
{
    sprite_index = falling_sprite;
}
else
{
    sprite_index = idle_sprite;
}

