///scr_hud_create()

/**
 * HUD: Initialize Variables
 *
 * Added to the hud object's Create event.
 */

player_current_health = 0;
player_maximum_health = 0;
player_health_markers = 5;

// object must be persistent
if ( ! persistent)
{
    persistent = true;
}

