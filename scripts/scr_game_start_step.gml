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

global.GAME_HAS_FOCUS = !os_is_paused();

// track the amount of time that has passed since the last frame
var dt = room_speed / 1000000 * delta_time;
if ( ! global.GAME_HAS_FOCUS)
{
    dt = 0;
}
global.TICK = min(2, dt);

// if ESC key is pressed
if (keyboard_check_pressed(vk_escape))
{
    io_clear();
    
    // add the Pause Screen
    instance_create(0, 0, obj_pause_screen);
}

// pause the game if the window loses focus (requires a left mouse click to unpause)
if ( ! global.GAME_HAS_FOCUS)
{
    if ( ! instance_exists(obj_game_focus))
    {
        instance_create(0, 0, obj_game_focus);
    }
}

