/**
 * Player: Is Attacking
 *
 * Player will stop attacking when the attack animation ends or is hurt while attacking.
 */

/*
if ( ! dying && ! hurting)
{
    // if attack cooldown is active
    if ( ! can_attack)
    {
        image_alpha = 0.5;
        attack_cooldown_timer += TICK;
        
        // if the timer has ended
        if (attack_cooldown_timer >= attack_cooldown_time)
        {
            image_alpha = 1.0;
            can_attack = true;
            attacking = false;
            attack_cooldown_timer = 0;
        }
    }
    
    // if the attack key was pressed
    if (can_attack && key_attack_pressed)
    {
        can_attack = false;
        attacking = true;
    }
}
*/

if ( ! dying && ! hurting && ! attacking)
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

