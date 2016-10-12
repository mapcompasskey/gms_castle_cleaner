///scr_game_start_step()

/**
 * Game Start Controller: On Update
 *
 * Added to the game start object's Step event.
 *
 * When the window is moving the game will pause but delta_time will continue to count up.
 * So I've added a limit to how high the delta_time variable is allowed to get. TICK is used
 * with timers and entity movement. So having TICK suddenly be in the hundreds (when its
 * usually around one) will caused everything to launch at lightning speeds and cause the
 * timers to abruptly end.
 */

GAME_HAS_FOCUS = !os_is_paused();

// track the amount of time that has passed since the last frame
var dt = room_speed / 1000000 * delta_time;
if ( ! GAME_HAS_FOCUS)
{
    dt = 0;
}
TICK = min(2, dt);

// if ESC key is pressed
if (keyboard_check_pressed(vk_escape))
{
    io_clear();
    
    // add the Pause Screen
    instance_create(0, 0, obj_pause_screen);
}

// pause the game if the window loses focus (requires a left mouse click to unpause)
if ( ! GAME_HAS_FOCUS)
{
    if ( ! instance_exists(obj_game_focus))
    {
        instance_create(0, 0, obj_game_focus);
    }
}

/** /
THIS IS ONLY NEEDED IF I WANT TO FORCE THE WINDOW'S SIZE WHEN THE GAME STARTS
WHICH I CAN CONTROL WITH THE WIDTH/HEIGHT OF THE FIRST ROOM'S PORT
THEN THE VIEW WILL SCALE TO FIT IT

// if the application surface needs resized
// *this doesn't update immediately so it needs to be checked over several steps
if (RESIZE_SURFACE)
{
    var width = VIEW_WIDTH * VIEW_SCALE;
    var height = VIEW_HEIGHT * VIEW_SCALE;
    
    surface_resize(application_surface, width, height);
    //display_reset(0, false);
    
    if (window_get_width() == width && window_get_height() == height)
    {
        RESIZE_SURFACE = false;
    }
}
/**/

