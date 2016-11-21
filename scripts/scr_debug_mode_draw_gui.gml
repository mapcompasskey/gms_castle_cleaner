///scr_debug_mode_draw_gui()

/**
 * Debug Mode Controller: On Draw GUI
 *
 * Added to the debug mode object's Draw GUI event.
 */

with (obj_player)
{
    // draw player objects bounding box
    scr_debug_mode_draw_bouding_box(bbox_left, bbox_top, bbox_right, bbox_bottom);
}

with (obj_player_attack)
{
    // draw player attack objects bounding box
    scr_debug_mode_draw_bouding_box(bbox_left, bbox_top, bbox_right, bbox_bottom);
}

with (obj_enemy)
{
    // draw enemy objects bounding box
    scr_debug_mode_draw_bouding_box(bbox_left, bbox_top, bbox_right, bbox_bottom);
}

with (obj_item)
{
    // draw item objects bounding box
    scr_debug_mode_draw_bouding_box(bbox_left, bbox_top, bbox_right, bbox_bottom);
}

/*with (obj_block)
{
    // draw block objects bounding box
    scr_debug_mode_draw_bouding_box(bbox_left, bbox_top, bbox_right, bbox_bottom);
}*/

with (obj_placeholder_block)
{
    // draw placeholder block objects bounding box
    scr_debug_mode_draw_bouding_box(bbox_left, bbox_top, bbox_right, bbox_bottom);
}

