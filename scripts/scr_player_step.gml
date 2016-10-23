///scr_player_step()

/**
 * Player: On Update
 *
 * Called during this object's Step event.
 */

// is object standing on a wall or block
var on_wall = place_meeting(x, y + 1, obj_wall);
var on_block = place_meeting(x, y + 1, obj_block);
grounded = max(on_wall, on_block);

// is object standing in a ladder
on_ladder = place_meeting(x, y, obj_ladder);

// check object state
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
    if (attack_1)
    {
        if (PLAYER_BROOM_IS_BROKEN)
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
    else if (attack_2)
    {
        if (PLAYER_BROOM_IS_BROKEN)
        {
            if (sprite_index != attacking2_broken_sprite)
            {
                if (sprite_index == attacking2_sprite)
                {
                    sprite_index = attacking2_broken_sprite;
                }
                else
                {
                    sprite_index = attacking2_broken_sprite;
                    image_index = 0;
                    image_speed = attacking2_speed;
                }
            }
        }
        else
        {
            if (sprite_index != attacking2_sprite)
            {
                sprite_index = attacking2_sprite;
                image_index = 0;
                image_speed = attacking2_speed;
            }
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

