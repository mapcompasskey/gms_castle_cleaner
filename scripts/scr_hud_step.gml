///scr_hud_step()

/**
 * HUD: On Update
 *
 * Added to the hud object's Step event.
 */

if (obj_player)
{
    player_current_health = obj_player.current_health;
    player_maximum_health = obj_player.maximum_health;
}

