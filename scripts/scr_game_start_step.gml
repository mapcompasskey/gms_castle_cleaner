///scr_game_start_step()

/**
 * Game Start Controller: On Update
 *
 * When the window is moving the game will pause but delta_time will continue to count up.
 * So I've added a limit to how high my delta_time variable is allowed to get. TICK is used
 * with timers and with entity movement. So having TICK suddenly be in the hundreds
 * (when its usually around one) will caused everything to launch at lightning speeds and
 * cause the timers to abruptly end.
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

