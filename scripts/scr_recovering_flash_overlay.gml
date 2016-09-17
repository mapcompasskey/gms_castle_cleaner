///scr_recovering_flash_overlay(event, time)

/**
 * Recovering Flash Overlay
 *
 * Ceate a flashing effect by overlaying a colored version of the sprite and swap its
 * color every few moments using a timer.
 *
 * d3d_set_fog will recolor the sprite with a solid color.
 */

var event = 'create';
var time = 2; // 1/30 a second

if (argument_count > 0)
{
    event = argument[0];
}

if (argument_count > 1)
{
    time = argument[1];
}

// if called from the object's Create event
if (event == 'create')
{
    recovering_flash_time = time;
    recovering_flash_timer = 0;
    recovering_flash_color = c_white;
}

// else, if called from the object's Draw event
else if (event == 'draw')
{
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
}

