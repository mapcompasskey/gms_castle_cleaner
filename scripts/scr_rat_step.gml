///scr_rat_step()

/**
 * Rat: On Update
 *
 * Added to the rat object's Step event.
 */

// is object standing on a wall or block
var on_wall = place_meeting(x, y + 1, obj_wall);
var on_block = place_meeting(x, y + 1, obj_block);
grounded = max(on_wall, on_block);


/**
 * Check Object State
 */

scr_rat_update_action();
scr_rat_is_hurting();
scr_rat_is_walking();
scr_rat_is_attacking();
scr_rat_is_eating();


/**
 * Update Object Sprite
 */

scr_entity_update_image_xscale();

// update the sprite and animation speed
if (walking)
{
    if (sprite_index != walking_sprite)
    {
        sprite_index = walking_sprite;
        image_index = 0;
        image_speed = walking_speed;
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

