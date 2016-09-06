///scr_player_draw()

/**
 * Player: On Draw
 *
 * Called during this object's Draw event.
 */

var border_color = BORDER_COLOR;
if (recovering)
{
    border_color = c_red;
}
scr_draw_border(border_color)

draw_self();
