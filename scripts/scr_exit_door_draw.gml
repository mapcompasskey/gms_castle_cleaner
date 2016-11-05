///scr_exit_door_draw()

/**
 * Exit Door: On Draw
 *
 * Called during this object's Draw event.
 */

// draw a border around sprite
border_color = global.BORDER_COLOR;
if (can_use_door)
{
    if (is_colliding_with != noone)
    {
        border_color = global.HIGHLIGHT_BORDER_COLOR;
    }
}
scr_draw_border(border_color);

// draw the object's sprite
draw_self();

// if can use and colliding with the player
if (can_use_door)
{
    if (is_colliding_with != noone)
    {
        // draw text above the door
        var text = 'EXIT';
        var pos_x = round(x);
        var pos_y = round(y - sprite_height);
            
        draw_set_color(c_white);
        draw_set_halign(fa_center);
        draw_set_valign(fa_bottom);
        draw_set_font(fnt_silkscreen_game);
        draw_text(pos_x, pos_y, text);
    }
}

// reset collision variable
is_colliding_with = noone;

