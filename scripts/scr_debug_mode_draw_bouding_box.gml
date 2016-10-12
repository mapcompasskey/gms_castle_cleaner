///scr_debug_mode_draw_bouding_box(bbox_left, bbox_top, bbox_right, bbox_bottom)

/**
 * Debug Mode Controller: Draw the Bounding Box
 *
 */

var pos_x1 = (argument0 - view_xview[0]);
var pos_y1 = (argument1 - view_yview[0]);

var pos_x2 = (argument2 - view_xview[0]);
var pos_y2 = (argument3 - view_yview[0]);

var a = application_get_position();
var scale_x = ((a[2] - a[0]) / view_wview[0]);
var scale_y = ((a[3] - a[1]) / view_hview[0]);

pos_x1 = (pos_x1 * scale_x);
pos_y1 = (pos_y1 * scale_y);
pos_x2 = (pos_x2 * scale_x);
pos_y2 = (pos_y2 * scale_y);

// draw bounding box
draw_set_colour(c_red);
draw_rectangle(pos_x1, pos_y1, pos_x2, pos_y2, true);

