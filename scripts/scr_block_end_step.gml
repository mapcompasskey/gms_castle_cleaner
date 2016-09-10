///scr_block_end_step()

/**
 * Block: On End of Update
 *
 * Called during this object's End Step event.
 */

// if the instance is falling or was previously falling
if (falling_counter > 0)
{
    /**
     * Update Movement Speeds
     */
    
    scr_entity_movement_update();
    
    
    /**
     * Is Colliding with Walls
     */
    
    scr_entity_check_wall_collisions();
    
    /**
     * Update Object Position
     */
    
    x += mx;
    y += my;
    
    scr_entity_keep_in_room();
}

