///scr_update_player_and_item(player, item, action)

/**
 * Update Player/Item Relationship
 *
 */
{
    var player = argument0;
    var item = argument1;
    var action = argument2;
    
    if (player == noone || item == noone)
    {
        exit;
    }
    
    // if action is 'pickup', attach the item to the player
    if (action == 'pickup')
    {
        // update the item
        item.is_being_carried_by = player;
        
        // update the player
        player.carrying = true;
        player.is_carrying_item = item;
    }
    
    // else, if the action is 'drop', 'throw', 'destroy'
    else if (action == 'drop' || action == 'throw' || action == 'destroy')
    {
        // update the item
        item.is_being_carried_by = noone;
        
        // if throwing the item
        if (action == 'throw')
        {
            item.velocity_x = (item.speed_x * player.facing);
            item.velocity_y = -(item.speed_y);
        }
        
        // if destroying the item
        if (action == 'destroy')
        {
            with (item)
            {
                instance_destroy();
            }
        }
        
        // update the player
        player.carrying = false;
        player.is_carrying_item = noone;
    }
}
    
