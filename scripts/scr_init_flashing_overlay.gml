///scr_init_flashing_overlay()

/**
 * Set Flashing Overlay Variables
 *
 * Add this script to an object's create event and add 
 * "scr_draw_flashing_overlay(id)" to its draw event.
 */

recovering_flash_time = 2; // 1/30 a second
recovering_flash_timer = 0;
recovering_flash_color = c_white;

