///scr_player_cart_menu_step()

/**
 * Player Cart Menu Controller: On Update
 *
 * Added to the player cart menu object's Step event.
 */

// on object selection move
var on_object_navigation = 0;
on_object_navigation -= max(keyboard_check_pressed(KEY_LEFT), 0);
on_object_navigation += max(keyboard_check_pressed(KEY_RIGHT), 0);

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

// on object selected
var on_object_selected = 0;
on_object_selected = max(keyboard_check_pressed(KEY_ENTER), keyboard_check_pressed(KEY_ATTACK_1));
if (on_object_selected == 1)
{
    var object_text = object_array[object_array_position, 0];
    PLAYER_FOO = object_text;
    on_exit_menu = true;
}

// if ESC key is pressed
if (keyboard_check_pressed(KEY_ESCAPE))
{
    on_exit_menu = true;
}

// exit menu
if (on_exit_menu)
{
    // clear inputs
    io_clear();
    
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

