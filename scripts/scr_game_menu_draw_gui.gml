///scr_game_menu_draw_gui()

/**
 * Game Menu Controller: On Draw GUI
 *
 * Added to the game menu object's Draw GUI event.
 */

// simple, just draw the image 1:1 to the GUI
if (1 == 0)
{
    var pos_x = scr_get_gui_position('x', 'center');
    var pos_y = scr_get_gui_position('y', 'center');
    draw_sprite_ext(spr_game_logo, 0, pos_x, pos_y, 1, 1, 0, c_white, 1);
}

// draw the image scaled to the agme's scaling
if (1 == 0)
{
    // find the factor the game is scaled by
    var a = application_get_position();
    var scale_factor = ((a[2] - a[0]) / view_wview[0]);
    var scale_logo = floor(scale_factor);
    
    // center the sprite to the GUI (sprite's offset must be centered)
    var pos_x = scr_get_gui_position('x', 'center');
    var pos_y = scr_get_gui_position('y', 'center');
    
    // draw logo
    draw_sprite_ext(spr_game_logo, 0, pos_x, pos_y, scale_logo, scale_logo, 0, c_white, 1);
}

if (1 == 0)
{
    var a = application_get_position();    
    var app_width = (a[2] - a[0]);
    
    var width = sprite_get_width(spr_game_logo);
    
    var scale_factor = ((app_width / 4) * 3);
    var scale_logo = (scale_factor / width);
    
    var pos_x = scr_get_gui_position('x', 'center');
    var pos_y = scr_get_gui_position('y', 'center');
    
    draw_sprite_ext(spr_game_logo, 0, pos_x, pos_y, scale_logo, scale_logo, 0, c_white, 1);
}

if (1 == 0)
{
    var logo_scale = 1;
    
    var a = application_get_position();    
    var app_width = (a[2] - a[0]);
    var app_height = (a[3] - a[1]);
    var app_ratio = (app_width / app_height);
    
    // if app_ratio > 1, then the app in landscape mode
    if (app_ratio > 1)
    {
        var logo_height = sprite_get_height(spr_game_logo);
        var desired_height = ((app_height / 4) * 3);
        var logo_scale = (desired_height / logo_height);
    }
    // else, the app is in portrait mode
    else
    {
        var logo_width = sprite_get_width(spr_game_logo);
        var desired_width = ((app_width / 4) * 3);
        var logo_scale = (desired_width / logo_width);
    }
    
    var pos_x = scr_get_gui_position('x', 'center');
    var pos_y = scr_get_gui_position('y', 'center');
    
    draw_sprite_ext(spr_game_logo, 0, pos_x, pos_y, logo_scale, logo_scale, 0, c_white, 1);
}

if (1 == 1)
{
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
    pos_y = (pos_y + 10);
    
    draw_sprite_ext(spr_game_logo, 0, pos_x, pos_y, logo_scale, logo_scale, 0, c_white, 1);
}


// find the factor the game is scaled by
var a = application_get_position();
var scale_factor = ((a[2] - a[0]) / view_wview[0]);
var scale_text = scale_factor;

// draw menu options
draw_set_font(fnt_04b03_menu);
//draw_set_font(fnt_04b03_gui);
//draw_set_font(fnt_silkscreen_game);
draw_set_color(c_white);

var i, text, align_x, align_y, offset_x, offset_y, str_width, pos_x, pos_y;
for (i = 0; i < array_height_2d(menu_options); i++)
{
    text = menu_options[i, 0];
    if (i == menu_position)
    {
        text = "> " + text;
    }
    
    align_x   = menu_options[i, 1];
    align_y   = menu_options[i, 2];
    offset_x  = menu_options[i, 3];
    offset_y  = menu_options[i, 4];
    
    // horizontal alignment
    switch (align_x)
    {
        // align right
        case "right":
            draw_set_halign(fa_right);
            pos_x = scr_get_gui_position('x', 'right');
            break;
        
        // align center
        case "center":
            draw_set_halign(fa_middle);
            pos_x = scr_get_gui_position('x', 'center');
            break;
            
        // align left
        default:
            draw_set_halign(fa_left);
            pos_x = scr_get_gui_position('x', 'left');;
    }
        
    // vertical alignment
    switch (align_y)
    {
        // align bottom
        case "bottom":
            draw_set_valign(fa_bottom);
            pos_y = scr_get_gui_position('y', 'bottom');
            break;
            
        // align middle
        case "middle":
            draw_set_valign(fa_middle);
            pos_y = scr_get_gui_position('y', 'center');
            break;
        
        // align top
        default:
            draw_set_valign(fa_top);
            pos_y = scr_get_gui_position('y', 'top');
    }
    
    //text += string(scale_factor) + ', ' + string(scale_text);
        
    // position and draw text
    //pos_x += offset_x;
    //pos_y += offset_y;
    //draw_text(pos_x, pos_y, text);
    
    pos_x += (offset_x * scale_text);
    pos_y += (offset_y * scale_text);
    draw_text_transformed(pos_x, pos_y, text, scale_text, scale_text, 0);
}


