///scr_player_is_attacking()

/**
 * Player: Is Attacking
 *
 * Player will stop attacking when the attack animation ends or is hurt while attacking.
 */

if ( ! dying && ! hurting && ! crouching && ! attacking)
{
    // if the attack key was pressed
    if (key_attack_pressed && player_attack == noone)
    {
        attacking = true;
        
        // create the player attack instance
        player_attack = instance_create(0, 0, obj_player_attack);
        player_attack.belongs_to = object_index;
        player_attack.image_index = 0;
        player_attack.image_speed = attacking_speed;
    }
}

// if hurt while attacking
if (attacking && hurting)
{
    attacking = false;
}

// if no longer attacking but the player attack object still exist
if ( ! attacking && player_attack != noone)
{
    with (player_attack)
    {
        instance_destroy();
    }
    player_attack = noone;
}

