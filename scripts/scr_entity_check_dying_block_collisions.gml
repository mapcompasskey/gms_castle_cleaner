///scr_entity_check_dying_block_collisions()

/**
 * Check if Colliding with Dying Block Objects
 *
 * Include in an object's End Step event.
 */

entity_hit_wall = false;

// check horizontal collision
if (place_meeting(x + mx, y, obj_dying_block))
{
    temp_mx = 0;
    while ( ! place_meeting(x + temp_mx + sign(mx), y, obj_dying_block))
    {
        temp_mx += sign(mx);
    }
    mx = temp_mx;
    velocity_x = 0;
    
    entity_hit_wall = true;
}

// check vertical collision
if (place_meeting(x + mx, y + my, obj_dying_block))
{
    temp_my = 0;
    while ( ! place_meeting(x + mx, y + temp_my + sign(my), obj_dying_block))
    {
        temp_my += sign(my);
    }
    my = temp_my;
    velocity_y = 0;
}

