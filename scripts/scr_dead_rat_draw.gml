///scr_dead_rat_draw()

/**
 * DeadRat: On Draw
 *
 * Called during this object's Draw event.
 */

//image_blend = c_white;
if (player_collision)
{
    // draw border sprite
    draw_sprite_ext(spr_dead_rat_b, image_index, x, y, 1, 1, 0, c_white, 0.5);
}
draw_self();


