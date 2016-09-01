///scr_dead_rat_step()

/**
 * Dead Rat: On Update
 *
 * Called during this object's Step event.
 */

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);


/**
 * Check Object State
 */

//scr_rat_update_action();
//scr_rat_is_hurting();
//scr_rat_is_walking();
//scr_rat_is_attacking();


/**
 * Check Player Collision
 * /

if (can_use_item)
{
    // if overlapping with the player object
    if (place_meeting(x, y, obj_player))
    {
        // if the UP key was released
        if (keyboard_check_released(vk_up))
        {
            
        }
    }
}


/**
 * Update Object Sprite
 * /

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
*/

