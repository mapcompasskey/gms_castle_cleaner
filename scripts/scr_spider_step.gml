///scr_spider_step()

/**
 * Spider: On Update
 *
 * Added to this object's Step event.
 */

// did this instance fall onto a solid object
grounded = was_grounded;

// check instance state
scr_spider_update_action();
scr_spider_is_hurting();
scr_spider_is_jumping();
scr_spider_is_walking();
scr_spider_is_attacking();

// update the sprite and animation speed
scr_entity_update_image_xscale();

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
else if (falling)
{
    if (sprite_index != falling_sprite)
    {
        sprite_index = falling_sprite;
        image_index = 0;
        image_speed = falling_speed;
    }
}
else if (jumping)
{
    if (sprite_index != jumping_sprite)
    {
        sprite_index = jumping_sprite;
        image_index = 0;
        image_speed = jumping_speed;
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

