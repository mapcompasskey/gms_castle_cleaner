///scr_bookcase_step()

/**
 * Bookcase: On Update
 *
 * Added to the bookcase object's Step event.
 */


/**
 * Check Object State
 */

scr_bookcase_is_hurting();


/**
 * Update Object Sprite
 */

if (dying)
{
    if (sprite_index != dying_sprite)
    {
        sprite_index = dying_sprite;
        image_index = 0;
        image_speed = dying_speed;
    }
}
else if (hurting)
{
    if (sprite_index != hurting_sprite)
    {
        sprite_index = hurting_sprite;
        image_index = 0;
        image_speed = hurting_speed;
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

