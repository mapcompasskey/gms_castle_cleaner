///scr_player_is_attacking()

/**
 * Player: Is Attacking
 *
 * Player will stop attacking when the attack animation ends or is hurt while attacking.
 */

if ( ! dying && ! hurting && ! crouching && ! attacking && ! carrying)
{
    // if the Attack 1 key was pressed
    if (global.PLAYER_KEY_ATTACK_1 && player_attack == noone)
    {
        // if walking and not jumping or falling
        // forward attack
        if (walking && ! jumping && ! falling)
        {
            attacking = true;
            
            // update attack animation settings
            attacking_speed = attacking1_speed
            attacking_sprite = attacking1_sprite;
            attacking_broken_sprite = attacking1_broken_sprite;
            attacking_mask = attacking1_mask;
            
            if ( ! global.PLAYER_BROOM_IS_BROKEN)
            {
                // create the player attack instance
                player_attack = instance_create(0, 0, obj_player_attack);
                player_attack.belongs_to = object_index;
                player_attack.sprite_index = attacking_mask;
                player_attack.image_index = 0;
                player_attack.image_speed = attacking_speed;
            }
        }
        
        // if standing still, jumping or falling
        // overhead attack
        else if ( ! walking || jumping || falling)
        {
            attacking = true;
            
            // update attack animation settings
            attacking_speed = attacking2_speed
            attacking_sprite = attacking2_sprite;
            attacking_broken_sprite = attacking2_broken_sprite;
            attacking_mask = attacking2_mask;
            
            if ( ! global.PLAYER_BROOM_IS_BROKEN)
            {
                // create the player attack instance
                player_attack = instance_create(0, 0, obj_player_attack);
                player_attack.belongs_to = object_index;
                player_attack.sprite_index = attacking_mask;
                player_attack.image_index = 0;
                player_attack.image_speed = attacking_speed;
            }
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

