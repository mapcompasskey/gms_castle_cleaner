///scr_game_menu_draw()

/**
 * Game Menu Controller: On Draw
 *
 */

// draw logo
draw_sprite_ext(spr_game_logo, 0, logo_x, logo_y, 1, 1, 0, c_white, 1);

// draw menu options
draw_set_font(fnt_04b03_menu);
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
    //str_width = string_width(text);

    // horizontal alignment
    draw_set_halign(fa_left);
    switch (align_x)
    {
        // align right
        case "right":
            draw_set_halign(fa_right);
            pos_x = view_wview[0];
            break;
        
        // align center
        case "center":
            draw_set_halign(fa_middle);
            pos_x = view_wview[0] / 2;
            break;
            
        // align left
        default:
            pos_x = 0;
    }
        
    // vertical alignment
    draw_set_valign(fa_middle);
    switch (align_y)
    {
        // align bottom
        case "bottom":
            draw_set_valign(fa_bottom);
            pos_y = view_hview[0];
            break;
            
        // align middle
        case "middle":
            pos_y = view_hview[0] / 2;
            break;
        
        // align top
        default:
            pos_y = 0;
    }
    
    // position and draw text
    pos_x += offset_x;
    pos_y += offset_y;
    draw_text(pos_x, pos_y, text);
}

