///scr_rat_draw()

/**
 * Rat: On Draw
 *
 * Added to the rat object's Draw event.
 */

// draw a border around sprite
scr_draw_border(BORDER_COLOR);

// draw the object's sprite
draw_self();

// if recovering
if (recovering)
{
    // draw flashing overlay
    scr_draw_flashing_overlay();
}

