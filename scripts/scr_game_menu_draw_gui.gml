///scr_game_menu_draw_gui()

/**
 * Game Menu Controller: On Draw GUI
 *
 * Added to the game menu object's Draw GUI event.
 */

/**
 * Draw Logo
 */

// get application surface dimensions
var a = application_get_position();    
var app_width = (a[2] - a[0]);
var app_height = (a[3] - a[1]);
var app_ratio = (app_width / app_height);

// get the logo sprites dimensions
var logo_scale = 1;
var logo_height = sprite_get_height(spr_game_logo);
var logo_width = sprite_get_width(spr_game_logo);

// if the app is wider than it is tall (landscape mode)
if (app_ratio > 1)
{
    var target_height = ((app_height / 4) * 3);
    var logo_scale = (target_height / logo_height);
}
// else, the app is taller than it is wide (portrait mode)
else
{
    var target_width = ((app_width / 4) * 3);
    var logo_scale = (target_width / logo_width);
}

var pos_x = scr_get_gui_position('x', 'center');
var pos_y = scr_get_gui_position('y', 'top');

pos_x = (pos_x - ((logo_width / 2) * logo_scale));
pos_y = (pos_y + 40);

draw_sprite_ext(spr_game_logo, 0, pos_x, pos_y, logo_scale, logo_scale, 0, c_white, 1);


/**
 * Bottom/Right Align the Text Options
 */

// find the factor the game is scaled by
var a = application_get_position();
var scale_factor = ((a[2] - a[0]) / view_wview[0]);
var scale_text = scale_factor;

// set text options
draw_set_font(fnt_04b03_menu);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

// text parameters
var text = '';
var text_height = 0;
var pos_x = scr_get_gui_position('x', 'right');
var pos_y = scr_get_gui_position('y', 'bottom');
var offset_x = -10;
var offset_y = -10;

// loop through the menu options array
for (var i = 0; i < array_height_2d(menu_options); i++)
{
    text = menu_options[i, 1];
    if (i == menu_position)
    {
        text = "> " + text;
    }
    
    pos_y = (pos_y - (text_height * scale_text));
    draw_text_transformed((pos_x + offset_x), (pos_y + offset_y), text, scale_text, scale_text, 0);
    text_height = string_height(text);
}

