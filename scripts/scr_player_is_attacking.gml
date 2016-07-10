/**
 * Player: Is Attacking
 *
 */

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

