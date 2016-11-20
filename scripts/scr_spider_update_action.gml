///scr_spider_update_action(()

/**
 * Spider: Update Action
 *
 */

if ( ! dying && ! hurting && ! jumping && ! falling)
{
    action_timer += global.TICK;
    
    if (action_timer > action_time)
    {
        // reset action timer
        action_timer = 0;
        action_time = random_range(120, 240); // 2 - 4 seconds
        
        switch (irandom(5))
        {
            // walk left
            case 0:
            case 1:
                key_left = true;
                key_right = false;
                break;
            
            // walk right
            case 2:
            case 3:
                key_left = false;
                key_right = true;
                break;
            
            // idle
            case 5:
                key_left = false;
                key_right = false;
                action_time = 30; // 0.5 seconds
                break;
        }
        
    }
}

