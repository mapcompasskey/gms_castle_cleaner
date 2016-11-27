///scr_item_draw()

/**
 * Item: On Draw
 *
 * Added to this object's Draw event.
 */

border_color = global.BORDER_COLOR;
if (can_be_carried)
{
    if (is_colliding_with != noone)
    {
        border_color = global.HIGHLIGHT_BORDER_COLOR;
        is_colliding_with = noone;
    }
}
scr_draw_border(border_color);

draw_self();

