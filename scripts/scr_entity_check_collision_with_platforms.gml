///scr_entity_check_collision_with_platforms()

/**
 * Check if Colliding with Platforms
 *
 * Include in an object's End Step event.
 */

/*
 this works by testing with platform collision only if falling and only
 if not already inside a platform. it fixes the issue of the player overlapping
 multiple platforms by making more than one type of platform and placing them
 in a room so that the play can't overlap them - which isn't ideal because it
 requires careful placement of the different types of platforms to insure the
 player can't overlap two similar types.
*/

/*
// if falling, check vertical collision against platform
if (my > 0)
{
    // if not already inside a platform
    if ( ! place_meeting(x + mx, y, obj_platform))
    {
        // check vertical collision against platforms
        if (place_meeting(x + mx, y + my, obj_platform))
        {
            temp_my = 0;
            while ( ! place_meeting(x + mx, y + temp_my + sign(my), obj_platform))
            {
                temp_my += sign(my);
            }
            my = temp_my;
            velocity_y = 0;
        }
    }
}

// if falling, check vertical collision against platform 2
if (my > 0)
{
    // if not already inside a platform 2
    if ( ! place_meeting(x + mx, y, obj_platform_2))
    {
        // check vertical collision against platforms
        if (place_meeting(x + mx, y + my, obj_platform_2))
        {
            temp_my = 0;
            while ( ! place_meeting(x + mx, y + temp_my + sign(my), obj_platform_2))
            {
                temp_my += sign(my);
            }
            my = temp_my;
            velocity_y = 0;
        }
    }
}
*/


entity_hit_platform_y = false;

// if moving down on the y-axis (falling or pressed down by gravity)
if (my > 0)
{
    // start from the bottom/center of the instance
    var pos_x1 = bbox_left;
    var pos_y1 = bbox_bottom;
    
    var pos_x2 = bbox_right;
    var pos_y2 = bbox_bottom;
    
    // if point not already inside an object
    if ( ! position_meeting(pos_x1, pos_y1, obj_platform) && ! position_meeting(pos_x2, pos_y2, obj_platform))
    {
        pos_y1 = pos_y1 + 1;
        pos_y2 = pos_y2 + 1;
        
        // if this instance will collide with an object on the y-axis
        // *this isn't a real raycast since it doesn't detect along the path, only at the destination
        if (position_meeting((pos_x1 + mx), (pos_y1 + my), obj_platform))
        {
            // find how far the instance can move vertically before colliding
            temp_my = 0;
            while ( ! position_meeting((pos_x1 + mx), (pos_y1 + temp_my + sign(my)), obj_platform))
            {
                temp_my += sign(my);
                
                if (abs(temp_my) > abs(my))
                {
                    temp_my = 0;
                    break;
                }
            }
            
            // update the my value and reset the y velocity
            my = temp_my;
            velocity_y = 0;
            
            entity_hit_platform_y = true;
        }
        
        else if (position_meeting((pos_x2 + mx), (pos_y2 + my), obj_platform))
        {
            // find how far the instance can move vertically before colliding
            temp_my = 0;
            while ( ! position_meeting((pos_x2 + mx), (pos_y2 + temp_my + sign(my)), obj_platform))
            {
                temp_my += sign(my);
                
                if (abs(temp_my) > abs(my))
                {
                    temp_my = 0;
                    break;
                }
            }
            
            // update the my value and reset the y velocity
            my = temp_my;
            velocity_y = 0;
            
            entity_hit_platform_y = true;
        }
        
    }
}

