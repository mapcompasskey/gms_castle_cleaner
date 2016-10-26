///scr_hud_draw_health()

/**
 * HUD: Draw Player Healt
 *
 */

/**
 * Draw Health Markers
 */

// get the size of the sprite
var padding = 2;
var gutter = 2;
var xoffset = sprite_get_xoffset(spr_player_health_marker);
var yoffset = sprite_get_yoffset(spr_player_health_marker);
var width = sprite_get_width(spr_player_health_marker);
var height = sprite_get_height(spr_player_health_marker);

padding = (padding * scale_sprites);
gutter = (gutter * scale_sprites);
xoffset = (xoffset * scale_sprites);
yoffset = (yoffset * scale_sprites);
width = (width * scale_sprites);
height = (height * scale_sprites);

// left align sprite to GUI
var pos_x = scr_get_gui_position('x', 'left');
pos_x = (pos_x + padding + xoffset);

// top align sprite to GUI
var pos_y = scr_get_gui_position('y', 'top');
pos_y = (pos_y + padding - yoffset);

// players health as a percentage
var player_health_percentage = (player_current_health * 100 / player_maximum_health);

// percentage of a single unit of health on the screen
var player_health_marker_size = (100 / player_health_markers);

for (var i = 0; i < player_health_markers; i++)
{
    // if health lower than current marker
    if (player_health_percentage <= (player_health_marker_size * i))
    {
        // draw empty marker
        draw_sprite_ext(spr_player_health_marker, 1, pos_x, pos_y, scale_sprites, scale_sprites, 0, c_white, 1);
    }
    else
    {
        // draw filled marker
        draw_sprite_ext(spr_player_health_marker, 0, pos_x, pos_y, scale_sprites, scale_sprites, 0, c_white, 1);
    }
    
    pos_x = (pos_x + width + gutter);
}


/**
 * Draw Health Text
 */

var pos_x2 = scr_get_gui_position('x', 'left');
pos_x2 = (pos_x2 + padding);
var pos_y2 = (pos_y + height + gutter);

var txt = "Health: " + string(player_health_percentage);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_04b03_gui);
draw_text_transformed(pos_x2, pos_y2, txt, scale_text, scale_text, 0);


