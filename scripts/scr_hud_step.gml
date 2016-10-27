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

// update the item text
player_item_text = 'Broken Broom';
if (PLAYER_BROOM_CURRENT_HEALTH == 1)
{
    player_item_text = 'Broom (1 use)';
}
else if (PLAYER_BROOM_CURRENT_HEALTH > 1)
{
    player_item_text = 'Broom (' + string(PLAYER_BROOM_CURRENT_HEALTH) + ' uses)';
}

// if the player instance exists
if (PLAYER != noone)
{
    with (PLAYER)
    {
        // get current health
        other.player_current_health = current_health;
        other.player_maximum_health = maximum_health;
        
        // if player is carrying an item
        if (is_carrying_item != noone)
        {
            other.player_item_text = is_carrying_item.item_name;
        }
        
    }
}


