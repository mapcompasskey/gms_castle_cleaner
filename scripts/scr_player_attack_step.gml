///scr_player_attack_step()

/**
 * Player Attack: On Update
 *
 * Added to the player attack object's Step event.
 */

/*
// if colliding with an enemy
var colliding_with = instance_place(x, y, obj_enemy);
if (colliding_with != noone)
{
    with (colliding_with)
    {
        //is_colliding_with = other.object_index;
        is_colliding_with = other.id;
    }
}
*/

// if colliding with crates
if (place_meeting(x, y, obj_crate))
{
    with (obj_crate)
    {
        if (place_meeting(x, y, other.id))
        {
            is_colliding_with = other.id;
        }
    }
}

