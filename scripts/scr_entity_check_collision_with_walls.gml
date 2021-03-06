///scr_entity_check_collision_with_walls()

/**
 * Check if Colliding with Walls
 *
 * Include in an object's End Step event.
 */

entity_hit_wall_x = false;
entity_hit_wall_y = false;

// if moving on the x or y axis
if (mx != 0 || my != 0)
{
    // if not already inside an object
    if ( ! place_meeting(x, y, obj_wall))
    {
        // check collision against the x-axis
        var collision_x = scr_entity_test_movement_collision(id, mx, my, obj_wall, 'x');
        if (collision_x[0])
        {
            mx = collision_x[1];
            velocity_x = 0;
            entity_hit_wall_x = true;
        }
        collision_x = 0;
        
        // check collision against the y-axis
        var collision_y = scr_entity_test_movement_collision(id, mx, my, obj_wall, 'y');
        if (collision_y[0])
        {
            my = collision_y[2];
            velocity_y = 0;
            entity_hit_wall_y = true;
        }
        collision_y = 0;
    }
}

