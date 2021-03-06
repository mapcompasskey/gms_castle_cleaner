///scr_player_draw()

/**
 * Player: On Draw
 *
 * Added to this object's Draw event.
 */

// draw a border around sprite
scr_draw_border(global.BORDER_COLOR);

// draw the object's sprite
draw_self();

// if recovering
if (recovering)
{
    // draw flashing overlay
    scr_recovering_flash_overlay('draw');
}

