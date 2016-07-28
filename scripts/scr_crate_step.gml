///scr_crate_step()

/**
 * Crate: On Update
 *
 * Added to the crate object's Step event.
 */


/**
 * Check Object State
 */

scr_crate_is_hurting();
scr_crate_is_falling();


/**
 * Update Object Sprite
 */

if (falling_counter > 0)
{
    sprite_index = spr_crate_falling;
}
else
{
    sprite_index = spr_crate;
}

