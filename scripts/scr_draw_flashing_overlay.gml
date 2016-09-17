///scr_draw_flashing_overlay()

/**
 * Draw a Flashing Overlay
 *
 * Ceate a flashing effect by overlaying a colored version of the sprite and swap its
 * color every few moments using a timer.
 * d3d_set_fog will recolor the sprite with a solid color.
 *
 * Add "scr_init_flashing_overlay(id)" to the an object's create event and add this
 * script to it's the draw event.
 */

// when the timer ends
recovering_flash_timer += TICK;
if (recovering_flash_timer >= recovering_flash_time)
{
    recovering_flash_timer = 0;
    
    // change overlay color
    if (recovering_flash_color == c_white)
    {
        recovering_flash_color = c_red;
    }
    else
    {
        recovering_flash_color = c_white;
    }
}

// draw the overlay
d3d_set_fog(1, recovering_flash_color, 0, 0);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 0.5);
d3d_set_fog(0, 0, 0, 0);

