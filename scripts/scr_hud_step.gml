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
scale_text = max(1, floor(scale_factor * 0.4));

// scale sprites at a lower rate
scale_sprites = max(1, floor(scale_factor * 0.75));

// update the item text
player_item_text = '';

// if the player instance exists
if (global.PLAYER != noone)
{
    // set default item text
    player_item_text = 'Broken Broom';
    if (global.PLAYER_BROOM_CURRENT_HEALTH == 1)
    {
        player_item_text = 'Broom (1 use)';
    }
    else if (global.PLAYER_BROOM_CURRENT_HEALTH > 1)
    {
        player_item_text = 'Broom (' + string(global.PLAYER_BROOM_CURRENT_HEALTH) + ' uses)';
    }
    
    // check if the player is carrying an item
    with (global.PLAYER)
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


