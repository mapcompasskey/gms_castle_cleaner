///scr_game_focus_draw()

/**
 * Game Focus Controller: On Draw
 *
 * Added to the game focus object's Draw event.
 */

// draw a black rectangle over the scene
draw_set_color(c_black);
draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0], 0);

