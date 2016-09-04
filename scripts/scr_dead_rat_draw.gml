///scr_dead_rat_draw()

/**
 * DeadRat: On Draw
 *
 * Called during this object's Draw event.
 */

border_color = BORDER_COLOR;
if (player_collision)
{
    border_color = c_yellow;
}
scr_draw_border(border_color);

draw_self();


