///scr_player_update_sprite()

/**
 * Player: Update Sprite
 *
 * Update the sprite and animation speeds depending on the current state.
 */

// update direction facing
scr_entity_update_image_xscale();

// update sprite based on state
if (hurting)
{
    if (sprite_index != hurting_sprite)
    {
        sprite_index = hurting_sprite;
        image_index = 0;
        image_speed = hurting_speed;
    }
}
else if (crouching)
{
    if (sprite_index != crouching_sprite)
    {
        sprite_index = crouching_sprite;
        image_index = 0;
        image_speed = crouching_speed;
    }
}
else if (attacking)
{
    if (global.PLAYER_BROOM_IS_BROKEN)
    {
        if (sprite_index != attacking_broken_sprite)
        {
            if (sprite_index == attacking_sprite)
            {
                sprite_index = attacking_broken_sprite;
            }
            else
            {
                sprite_index = attacking_broken_sprite;
                image_index = 0;
                image_speed = attacking_speed;
            }
        }
    }
    else
    {
        if (sprite_index != attacking_sprite)
        {
            sprite_index = attacking_sprite;
            image_index = 0;
            image_speed = attacking_speed;
        }
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

