///scr_hud_draw_items()

/**
 * HUD: Draw Equipped Items
 *
 */

// find the factor the game is scaled by
var a = application_get_position();
var scale_factor = ((a[2] - a[0]) / view_wview[0]);

/**
 * Draw the HUD's Broom Sprite
 */

// get the size of the sprite
var padding = 2;
var xoffset = sprite_get_xoffset(spr_hud_broom);
var yoffset = sprite_get_yoffset(spr_hud_broom);
var width = sprite_get_width(spr_hud_broom);
var height = sprite_get_height(spr_hud_broom);

padding = (padding * scale_factor);
xoffset = (xoffset * scale_factor);
yoffset = (yoffset * scale_factor);
width = (width * scale_factor);
height = (height * scale_factor);

// right align sprite to GUI
var pos_x = scr_get_gui_position('x', 'right');
pos_x = pos_x - (padding + width + xoffset);

// top align sprite to GUI
var pos_y = 0;
pos_y = pos_y + (padding - yoffset);

draw_sprite_ext(spr_hud_broom, 0, pos_x, pos_y, scale_factor, scale_factor, 0, c_white, 1);


/**
 * Draw the Number of Uses Left
 */
 
// position text to the bottom/right of the image
var txt = string(PLAYER_BROOM_CURRENT_HEALTH);
var pos_x2 = (pos_x + width);
var pos_y2 = (pos_y + height);

draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_font(fnt_silkscreen_game);
draw_text_transformed(pos_x2, pos_y2, txt, scale_factor, scale_factor, 0);


/**
 * Draw the Name of the Item being Carried by the Player
 */
 
// position text to the bottom/right of the image
var txt = string(PLAYER_IS_CARRYING);
var pos_x3 = (pos_x - padding);
var pos_y3 = (pos_y);

draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_font(fnt_silkscreen_game);
draw_text_transformed(pos_x3, pos_y3, txt, scale_factor, scale_factor, 0);

