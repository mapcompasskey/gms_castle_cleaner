///scr_hud_step()

/**
 * HUD: On Update
 *
 * Added to the hud object's Step event.
 */

// update the factor the game is scaled by
var a = application_get_position();
scale_factor = ((a[2] - a[0]) / view_wview[0]);

// scale text at a lower rate
scale_text = (scale_factor * 0.4);
if (scale_text < 1)
{
    scale_text = 1;
}

// scale sprites at a lower rate
scale_sprites = (scale_factor * 0.75);
if (scale_sprites < 1)
{
    scale_sprites = scale_factor;
}

if (obj_player)
{
    player_current_health = obj_player.current_health;
    player_maximum_health = obj_player.maximum_health;
}

