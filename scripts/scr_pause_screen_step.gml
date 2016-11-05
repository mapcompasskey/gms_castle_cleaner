///scr_pause_screen_step()

/**
 * Pause Screen Controller: On Update
 *
 * Added to the pause screen object's Step event.
 */

// if ESC key is pressed
if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_enter))
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

