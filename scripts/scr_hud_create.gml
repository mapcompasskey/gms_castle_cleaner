///scr_hud_create()

/**
 * HUD: Initialize Variables
 *
 * Added to the hud object's Create event.
 */

// object must be persistent
if ( ! persistent)
{
    persistent = true;
}

scale_factor = 1;
scale_text = 1;
scale_sprites = 1;

player_current_health = 0;
player_maximum_health = 0;
player_health_markers = 5;

player_item_text = '';

padding = 2;
gui_x_left = 0;
gui_x_right = 0;
gui_y_top = 0;

// black bar settings
// array(x1, x2, x3, x4)
black_bar[3] = 0;
black_bar[2] = 0;
black_bar[1] = 0;
black_bar[0] = 0;

// original health markers settings
// array(padding, gutter, xoffset, yoffset, width, height)
health_markers[5] = sprite_get_height(spr_hud_player_health_marker);
health_markers[4] = sprite_get_width(spr_hud_player_health_marker);
health_markers[3] = sprite_get_yoffset(spr_hud_player_health_marker);
health_markers[2] = sprite_get_xoffset(spr_hud_player_health_marker);
health_markers[1] = 2;
health_markers[0] = padding;

// health markers draw settings
// array(padding, gutter, xoffset, yoffset, width, height)
health_markers_draw[5] = 0;
health_markers_draw[4] = 0;
health_markers_draw[3] = 0;
health_markers_draw[2] = 0;
health_markers_draw[1] = 0;
health_markers_draw[0] = 0;

