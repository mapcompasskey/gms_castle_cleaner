///scr_player_cart_draw()

/**
 * Player Cart: On Draw
 *
 * Added to the player cart object's Draw event.
 */

// draw the object's sprite
draw_self();

// draw text above the cart
if (show_text)
{
    var pos_x = round(x);
    var pos_y = round(y - sprite_height);
    
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_set_font(fnt_silkscreen_game);
    draw_text(pos_x, pos_y, cart_text);
}

