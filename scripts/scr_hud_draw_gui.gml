///scr_hud_draw_gui()

/**
 * HUD: On Draw GUI
 *
 * Added to the hud object's Draw GUI event.
 */

// draw black background
draw_set_colour(c_black);
draw_set_alpha(0.75);
draw_rectangle(black_bar[0], black_bar[1], black_bar[2], black_bar[3], false);
draw_set_alpha(1.0);


// players health as a percentage
var player_health_percentage = (player_current_health * 100 / player_maximum_health);

// percentage of a single unit of health on the screen
var player_health_marker_size = (100 / player_health_markers);

// left/top align sprite to GUI
var pos_x = (gui_x_left + health_markers_draw[0] + health_markers_draw[2]);
var pos_y = (gui_y_top + health_markers_draw[0] - health_markers_draw[3]);

// draw each marker
for (var i = 0; i < player_health_markers; i++)
{
    // if health is lower than current marker
    if (player_health_percentage <= (player_health_marker_size * i))
    {
        // draw empty marker
        draw_sprite_ext(spr_hud_player_health_marker, 1, pos_x, pos_y, scale_sprites, scale_sprites, 0, c_white, 1);
    }
    else
    {
        // draw filled marker
        draw_sprite_ext(spr_hud_player_health_marker, 0, pos_x, pos_y, scale_sprites, scale_sprites, 0, c_white, 1);
    }
    
    pos_x = (pos_x + health_markers_draw[4] + health_markers_draw[1]);
}

/*
// draw health text
var txt = "Health: " + string(player_health_percentage);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_04b03_gui);
draw_text_transformed(pos_x, pos_y, txt, scale_text, scale_text, 0);
*/


// draw the player's current item
player_item_text = '[' + string(global.ATTACK_KEY_TEXT) + '] ' + player_item_text;
var txt = string(player_item_text);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_font(fnt_04b03_gui);

// right/top align to GUI
var pos_x = (gui_x_right - (padding * scale_sprites));
var pos_y = (gui_y_top + (padding * scale_sprites));
draw_text_transformed(pos_x, pos_y, txt, scale_text, scale_text, 0);

