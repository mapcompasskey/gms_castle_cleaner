///scr_player_cart_menu_step()

/**
 * Player Cart Menu Controller: On Update
 *
 * Added to the player cart menu object's Step event.
 */

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

