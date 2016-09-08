///scr_dead_rat_draw()

/**
 * Dead Rat: On Draw
 *
 * Called during this object's Draw event.
 */

border_color = BORDER_COLOR;
if (can_be_carried)
{
    if (is_colliding_with != noone)
    {
        border_color = HIGHLIGHT_BORDER_COLOR;
        is_colliding_with = noone;
    }
}
scr_draw_border(border_color);

draw_self();

