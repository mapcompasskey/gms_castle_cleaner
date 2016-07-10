/**
 * Game Start Controller: On Update
 *
 */

// update the amount of time that has passed since the last frame
TICK = 60 / 1000000 * delta_time;

// if ESC key is pressed
if (keyboard_check_pressed(vk_escape))
{
    // add the Pause Screen
    instance_create(0, 0, cont_pause_screen);
}

