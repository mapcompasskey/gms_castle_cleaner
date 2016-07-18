///scr_game_focus_create()

/**
 * Game Focus Controller: Initialize Variables
 *
 * Added to the game focus object's Create event.
 * Loaded anytime the window loses focus or the OS is paused.
 */

// deactivate everything but this object
instance_deactivate_all(true);

