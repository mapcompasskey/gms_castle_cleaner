///scr_pause_screen_draw_gui()

/**
 * Pause Screen Controller: On Draw GUI
 *
 * Added to the pause screen object's Draw GUI event.
 */

var pos_x = scr_get_gui_position('x', 'center');
var pos_y = scr_get_gui_position('y', 'center');

// draw pause screen text
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_04b03_gui);
draw_text(pos_x, pos_y, "PAUSED#Press ESC to continue");

