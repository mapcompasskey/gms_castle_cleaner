///scr_rat_end_step()

/**
 * Rat: On End of Update
 *
 * Called during this object's End Step event.
 */

if ( ! dying)
{
    // apply faux physics
    scr_entity_movement_update();
    
    // test collisions
    scr_entity_check_collision_with_platforms();
    scr_entity_check_collision_with_solids();
    scr_entity_check_collision_with_enemy_walls();
    
    // turn around if hitting a wall
    if (entity_hit_solid_x || entity_hit_enemy_wall_x)
    {
        key_left = !key_left;
        key_right = !key_right;    
    }
    
    // if was falling
    if (last_velocity_y > 0)
    {
        if (entity_hit_platform_y || entity_hit_solid_y || entity_hit_enemy_wall_x)
        {
            was_grounded = true;
        }
    }
    
    // update position
    x += mx;
    y += my;
    
    scr_entity_keep_in_room();
}
    
