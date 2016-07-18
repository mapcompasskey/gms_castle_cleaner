///scr_game_focus_step()

/**
 * Game Focus Controller: On Update
 *
 * Added to the game focus object's Step event.
 * Unpause the game if the window is clicked with the left mouse.
 */

if (mouse_check_button_pressed(mb_left))
{
    // activate everything
    instance_activate_all();
    
    // destroy this object
    instance_destroy();
}

