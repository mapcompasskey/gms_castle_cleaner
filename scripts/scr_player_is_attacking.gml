///scr_player_is_attacking()

/**
 * Player: Is Attacking
 *
 * Player will stop attacking when the attack animation ends or is hurt while attacking.
 */

if ( ! dying && ! hurting && ! crouching && ! attacking && ! carrying)
{
    // if the Attack 1 key was pressed
    if (PLAYER_KEY_ATTACK_1 && player_attack == noone)
    {
        attack_1 = true;
        attack_2 = false;
        
        attacking = true;
        
        if ( ! PLAYER_BROOM_IS_BROKEN)
        {
            // create the player attack instance
            player_attack = instance_create(0, 0, obj_player_attack);
            player_attack.belongs_to = object_index;
            player_attack.sprite_index = attacking_box_sprite;
            player_attack.image_index = 0;
            player_attack.image_speed = attacking_speed;
        }
    }
        
    // if the Attack 2 key was pressed
    else if (PLAYER_KEY_ATTACK_2 && player_attack == noone)
    {
        attack_1 = false;
        attack_2 = true;
        
        attacking = true;
        
        if ( ! PLAYER_BROOM_IS_BROKEN)
        {
            // create the player attack instance
            player_attack = instance_create(0, 0, obj_player_attack);
            player_attack.belongs_to = object_index;
            player_attack.sprite_index = attacking2_box_sprite;
            player_attack.image_index = 0;
            player_attack.image_speed = attacking2_speed;
        }
    }
}

// cancel attack
if (attacking)
{
    if (hurting || carrying)
    {
        attacking = false;
    }
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

