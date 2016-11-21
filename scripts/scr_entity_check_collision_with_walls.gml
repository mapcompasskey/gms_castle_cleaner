///scr_entity_check_collision_with_walls()

/**
 * Check if Colliding with Walls
 *
 * Include in an object's End Step event.
 */

entity_hit_wall_x = false;
entity_hit_wall_y = false;

/*
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
*/

// if moving on the x or y axis
if (mx != 0 || my != 0)
{
    // if not already inside an object
    if ( ! place_meeting(x, y, obj_wall))
    {
        var i, step_x, step_y, temp_mx, temp_my, arr;
        arr[2] = 1;
        arr[1] = 0.1;
        arr[0] = 0.01;
        
        // if this instance will collide with an object on the x-axis
        if (place_meeting((x + mx), y, obj_wall))
        {
            step_x = 0;
            temp_mx = 0;
            
            // find how far the instance can move horizontally before colliding
            for (i = 0; i < array_length_1d(arr); i++)
            {
                step_x = (sign(mx) * arr[i]);
                while ( ! place_meeting((x + temp_mx + step_x), y, obj_wall) && abs(temp_mx) < abs(mx))
                {
                    temp_mx += step_x;
                }
            }
            
            // if somehow overshot the original movement distance
            if (abs(temp_mx) > abs(mx))
            {
                temp_mx = 0;
            }
            
            // update the 'mx' value and reset the x velocity
            mx = temp_mx;
            velocity_x = 0;
            
            entity_hit_wall_x = true;
        }
        
        // if this instance will collide with an object on the y-axis
        if (place_meeting((x + mx), (y + my), obj_wall))
        {
            step_y = 0;
            temp_my = 0;
            
            // find how far the instance can move vertically before colliding
            for (i = 0; i < array_length_1d(arr); i++)
            {
                step_y = (sign(my) * arr[i]);
                while ( ! place_meeting((x + mx), (y + temp_my + step_y), obj_wall) && abs(temp_my) < abs(my))
                {
                    temp_my += step_y;
                }
            }
            
            // if somehow overshot the original movement distance
            if (abs(temp_my) > abs(my))
            {
                temp_my = 0;
            }
            
            // update the 'my' value and reset the y velocity
            my = temp_my;
            velocity_y = 0;
            
            entity_hit_wall_y = true;
        }
        
        // free up array
        arr = 0;
    }
}

