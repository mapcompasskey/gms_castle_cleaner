///scr_entity_check_collision_with_solids()

/**
 * Check if Colliding with Solids
 *
 * Include in an object's End Step event.
 */

entity_hit_solid_x = false;
entity_hit_solid_y = false;

// if moving on the x or y axis
if (mx != 0 || my != 0)
{
    // if not already inside an object
    if ( ! place_meeting(x, y, obj_solid))
    {
    
        // if this instance will collide with an object on the x-axis
        if (place_meeting((x + mx), y, obj_solid))
        {
            // find how far the instance can move horizontally before colliding
            var step_x = 0;
            var temp_mx = 0;
            
            // step in increments of 1
            step_x = sign(mx);
            while ( ! place_meeting((x + temp_mx + step_x), y, obj_solid) && abs(temp_mx) < abs(mx))
            {
                temp_mx += step_x;
            }
            
            // step in increments of 0.1
            step_x = (sign(mx) * 0.1);
            while ( ! place_meeting((x + temp_mx + step_x), y, obj_solid) && abs(temp_mx) < abs(mx))
            {
                temp_mx += step_x;
            }
            
            // step in increments of 0.01
            step_x = (sign(mx) * 0.01);
            while ( ! place_meeting((x + temp_mx + step_x), y, obj_solid) && abs(temp_mx) < abs(mx))
            {
                temp_mx += step_x;
            }
            
            // if somehow overshot the original movement distance
            if (abs(temp_mx) > abs(mx))
            {
                temp_mx = 0;
            }
            
            // update the 'mx' value and reset the x velocity
            mx = temp_mx;
            velocity_x = 0;
            
            entity_hit_solid_x = true;
        }
        
        // if this instance will collide with an object on the y-axis
        if (place_meeting((x + mx), (y + my), obj_solid))
        {
            // find how far the instance can move vertically before colliding
            var step_y = 0;
            var temp_my = 0;
            
            // step in increments of 1
            step_y = sign(my);
            while ( ! place_meeting((x + mx), (y + temp_my + step_y), obj_solid) && abs(temp_my) < abs(my))
            {
                temp_my += step_y;
            }
            
            // step in increments of 0.1
            step_y = (sign(my) * 0.1);
            while ( ! place_meeting((x + mx), (y + temp_my + step_y), obj_solid) && abs(temp_my) < abs(my))
            {
                temp_my += step_y;
            }
            
            // step in increments of 0.01
            step_y = (sign(my) * 0.01);
            while ( ! place_meeting((x + mx), (y + temp_my + step_y), obj_solid) && abs(temp_my) < abs(my))
            {
                temp_my += step_y;
            }
            
            // if somehow overshot the original movement distance
            if (abs(temp_my) > abs(my))
            {
                temp_my = 0;
            }
            
            // update the 'my' value and reset the y velocity
            my = temp_my;
            velocity_y = 0;
            
            entity_hit_solid_y = true;
        }
        
    }
}

