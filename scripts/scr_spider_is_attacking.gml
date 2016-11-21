///scr_spider_is_attacking()

/**
 * Spider: Is Attacking
 *
 */

if ( ! dying && ! hurting && ! recovering)
{
    if (place_meeting(x, y, obj_player))
    {
        with (obj_player)
        {
            is_colliding_with = other.id
        }
    }
}

