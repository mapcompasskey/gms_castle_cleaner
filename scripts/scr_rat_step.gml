///scr_rat_step()

/**
 * Rat: On Update
 *
 * Called during this object's Step event.
 */

// is object standing on a wall or block
var on_wall = place_meeting(x, y + 1, obj_wall);
var on_block = place_meeting(x, y + 1, obj_block);
grounded = max(on_wall, on_block);

// check object state
scr_rat_update_action();
scr_rat_is_hurting();
scr_rat_is_walking();
scr_rat_is_attacking();
scr_rat_is_eating();

// update the sprite and animation speed
scr_entity_update_image_xscale();

if (hurting)
{
    if (sprite_index != hurting_sprite)
    {
        sprite_index = hurting_sprite;
        image_index = 0;
        image_speed = hurting_speed;
    }
}
else if (eating)
{
    if (sprite_index != eating_sprite)
    {
        sprite_index = eating_sprite;
        image_index = 0;
        image_speed = eating_speed;
    }
}
else if (walking)
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

