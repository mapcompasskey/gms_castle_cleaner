///scr_player_is_carrying()

/**
 * Player: Is Carrying an Item
 *
 */

carrying = false;
if (is_carrying_item != noone)
{
    carrying = true;
}

if (carrying)
{
    // drop item if hurting
    if (hurting)
    {
        with (is_carrying_item)
        {
            is_being_carried = noone;
        }
            
        carrying = false;
        is_carrying_item = noone;
    }
}

if (carrying)
{
    // if Action or Attack key was preseed
    if (PLAYER_KEY_ACTION || PLAYER_KEY_ATTACK_1)
    {
        PLAYER_KEY_ACTION = false;
        PLAYER_KEY_ATTACK_1 = false;
        
        with (is_carrying_item)
        {
            facing = other.facing;
            velocity_x = speed_x * facing;
            velocity_y = -(speed_y);
            is_being_carried = noone;
        }
        
        carrying = false;
        is_carrying_item = noone;
    }
}

if ( ! carrying)
{
    if (place_meeting(x, y, obj_item))
    {
        // if the Action key was pressed
        if (PLAYER_KEY_ACTION)
        {
            PLAYER_KEY_ACTION = false;
            
            with (obj_item)
            {
                if (place_meeting(x, y, other.id))
                {
                    is_being_carried = other.id;
                    
                    other.carrying = true;
                    other.is_carrying_item = id;

                }
            }
        }
    }
}

