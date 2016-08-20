///scr_player_step()

/**
 * Player: On Update
 *
 * Added to the player object's Step event.
 */

// get the player's input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_down = keyboard_check(vk_down);
key_jump_pressed = keyboard_check_pressed(ord("C")); // vk_space
key_jump_released = keyboard_check_released(ord("C")); // vk_space
key_attack_pressed = keyboard_check_released(ord("Z"));
key_attack2_pressed = keyboard_check_released(ord("X"));

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);

// is object standing in a ladder
on_ladder = place_meeting(x, y, obj_ladder);


/**
 * Check Object State
 */

scr_player_is_crouching();
scr_player_is_jumping();
scr_player_is_attacking();
scr_player_is_walking();


/**
 * Update Object Sprite
 */

scr_entity_update_image_xscale();

// update the sprite and animation speed
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
        if (sprite_index != attacking_sprite)
        {
            sprite_index = attacking_sprite;
            image_index = 0;
            image_speed = attacking_speed;
        }
    }
    else if (attack_2)
    {
         if (sprite_index != attacking2_sprite)
        {
            sprite_index = attacking2_sprite;
            image_index = 0;
            image_speed = attacking2_speed;
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

