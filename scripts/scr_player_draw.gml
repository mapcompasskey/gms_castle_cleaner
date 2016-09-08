///scr_player_draw()

/**
 * Player: On Draw
 *
 * Called during this object's Draw event.
 */

// draw a border around sprite
scr_draw_border(BORDER_COLOR);

// draw the object's sprite
draw_self();

// if recovering
if (recovering)
{
    // draw flashing overlay
    scr_draw_flashing_overlay(id);
}

