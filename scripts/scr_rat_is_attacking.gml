///scr_rat_is_attacking()

/**
 * Rat: Is Attacking
 *
 */

if ( ! dying && ! hurting && ! recovering)
{
    if (place_meeting(x, y, obj_player))
    {
        with (obj_player)
        {
            //is_colliding_with = other.object_index;
            is_colliding_with = other.id
        }
    }
}

