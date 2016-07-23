///scr_player_cart_menu_step()

/**
 * Player Cart Menu Controller: On Update
 *
 * Added to the player cart menu object's Step event.
 */

// on object selection move
var on_object_navigation = 0;
on_object_navigation -= max(keyboard_check_pressed(vk_left), 0);
on_object_navigation += max(keyboard_check_pressed(vk_right), 0);

if (on_object_navigation != 0)
{
    object_array_position += on_object_navigation;
    if (object_array_position < 0)
    {
        object_array_position = (array_height_2d(object_array) - 1);
    }
    else if (object_array_position > (array_height_2d(object_array) - 1))
    {
        object_array_position = 0;
    }
}

// if ESC key is pressed
if (keyboard_check_pressed(vk_escape))
{
    // destory the surface, freeing it from memory
    if (surface_exists(snapshot_surface))
    {
        surface_free(snapshot_surface);
    }
    
    // activate everything
    instance_activate_all();
    
    // destroy the pause screen
    instance_destroy();
}

