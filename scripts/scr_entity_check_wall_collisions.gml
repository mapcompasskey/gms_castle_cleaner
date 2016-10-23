///scr_entity_check_wall_collisions()

/**
 * Check if Colliding with Walls
 *
 * Include in an object's End Step event.
 */

entity_hit_wall_x = false;
entity_hit_wall_y = false;

// check horizontal collision
if (place_meeting(x + mx, y, obj_wall))
{
    temp_mx = 0;
    while ( ! place_meeting(x + temp_mx + sign(mx), y, obj_wall))
    {
        temp_mx += sign(mx);
    }
    mx = temp_mx;
    velocity_x = 0;
    
    entity_hit_wall_x = true;
}

// check vertical collision
if (place_meeting(x + mx, y + my, obj_wall))
{
    temp_my = 0;
    while ( ! place_meeting(x + mx, y + temp_my + sign(my), obj_wall))
    {
        temp_my += sign(my);
    }
    my = temp_my;
    velocity_y = 0;
    
    entity_hit_wall_y = true;
}

