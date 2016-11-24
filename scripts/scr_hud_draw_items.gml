///scr_hud_draw_items()

/**
 * Draw Equipped Items
 *
 */

var padding = 2;

// right align to GUI
var pos_x = scr_get_gui_position('x', 'right');
pos_x = (pos_x - padding);

// top align to GUI
var pos_y = scr_get_gui_position('y', 'top');
pos_y = (pos_y + padding);

// draw the player's current item
var txt = string(player_item_text);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_font(fnt_04b03_gui);
draw_text_transformed(pos_x, pos_y, txt, scale_text, scale_text, 0);


