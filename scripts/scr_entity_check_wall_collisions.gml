/**
 * Check Entities for Collisions Against Walls
 *
 */

// used by NPCs to turn around
entity_hit_wall = false;

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
    
    entity_hit_wall = true;
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
}

