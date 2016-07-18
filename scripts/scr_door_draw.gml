///scr_door_draw()

/**
 * Door: On Draw
 *
 * Added to the door object's Draw event.
 */

// draw the object's sprite
draw_self();

// draw text above the door
if (show_text)
{
    var pos_x = round(x);
    var pos_y = round(y - sprite_height - 4);
    
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_set_font(fnt_silkscreen_game);
    draw_text(pos_x, pos_y, door_text);
    //draw_text_transformed(x, y, 'Imma Door', 0.5, 0.5, 0);
}

