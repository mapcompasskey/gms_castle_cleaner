///scr_entity_check_collision_with_solids2()

/**
 * Check if Colliding with Solids
 *
 * Include in an object's End Step event.
 */

entity_hit_solid_x = false;
entity_hit_solid_y = false;

// check horizontal collision
if (place_meeting(x + mx, y, obj_solid))
{
    temp_mx = 0;
    while ( ! place_meeting(x + temp_mx + sign(mx), y, obj_solid))
    {
        temp_mx += sign(mx);
    }
    mx = temp_mx;
    velocity_x = 0;
    
    entity_hit_solid_x = true;
}

// check vertical collision
if (place_meeting(x + mx, y + my, obj_solid))
{
    temp_my = 0;
    while ( ! place_meeting(x + mx, y + temp_my + sign(my), obj_solid))
    {
        temp_my += sign(my);
    }
    my = temp_my;
    velocity_y = 0;
    
    entity_hit_solid_y = true;
}

