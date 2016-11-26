///scr_player_step()

/**
 * Player: On Update
 *
 * Called during this object's Step event.
 */

// is this instance standing on a solid object
// *its possible to jump so slowly that the player is not one pixel above the ground by the next step
//grounded = place_meeting(x, y + 1, obj_solid);

// did this instance fall onto a solid object
grounded = was_grounded;

// check instance state
scr_player_check_interactions();
scr_player_is_hurting();
scr_player_is_crouching();
scr_player_is_jumping();
scr_player_is_carrying();
scr_player_is_attacking();
scr_player_is_walking();

// update the sprite and animation speed
scr_entity_update_image_xscale();

if (crouching)
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

