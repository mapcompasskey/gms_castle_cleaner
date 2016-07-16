/**
 * Player: On Update
 *
 */

// get the player's input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_down = keyboard_check(vk_down);
key_jump_pressed = keyboard_check_pressed(vk_space);
key_jump_released = keyboard_check_released(vk_space);
key_attack_pressed = keyboard_check_released(ord("Z"));

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

/*
// update the sprite
if (crouching)
{
    image_speed = 0;
    image_index = 1;
}
else
{
    image_speed = 0;
    image_index = 0;
}
*/

/*
// update the sprite and animation speed
if (hurting)
{
    if (sprite_index != hurting_sprite)
    {
        sprite_index = hurting_sprite;
        image_index = 0;
        image_speed = hurting_speed;
    }
}
else if (attacking)
{
    if (sprite_index != attacking_sprite)
    {
        sprite_index = attacking_sprite;
        image_index = 0;
        image_speed = attacking_speed;
    }
}
else if (jumping || falling)
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
*/

if (falling)
{
    if (sprite_index != falling_sprite)
    {
        sprite_index = falling_sprite;
        image_index = 0;
    }
}
else if (jumping)
{
    if (sprite_index != jumping_sprite)
    {
        sprite_index = jumping_sprite;
        image_index = 0;
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

