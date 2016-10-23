///scr_item_end_step()

/**
 * Item: On End of Update
 *
 * Base End Step event call for Item objects.
 * Called during this object's End Step event.
 */

// if being carried
if (is_being_carried_by != noone)
{
    // reposition onto the object
    /*with (is_being_carried_by)
    {
        other.x = x;
        other.y = bbox_top;
    }*/
    
    //x = is_being_carried_by.x;
    //y = is_being_carried_by.bbox_top;
    
    // new x/y positions
    mx = (is_being_carried_by.x - x);
    my = (is_being_carried_by.bbox_top - y);
    
    /**/
    // test collisions
    scr_entity_check_wall_collisions();
    scr_entity_check_block_collisions();
    scr_entity_check_placeholder_block_collisions();
    
    if (entity_hit_wall_x || entity_hit_block_x || entity_hit_placeholder_block_x)
    {
        scr_update_player_and_item(is_being_carried_by, id, 'drop');
    }
    if (entity_hit_wall_y || entity_hit_block_y || entity_hit_placeholder_block_y)
    {
        scr_update_player_and_item(is_being_carried_by, id, 'drop');
    }
    /**/
    
    // update object position
    x += mx;
    y += my;

    exit;
}

// is object standing on a wall or block
var on_wall = place_meeting(x, y + 1, obj_wall);
var on_block = place_meeting(x, y + 1, obj_block);
grounded = max(on_wall, on_block);

// apply faux physics
scr_entity_movement_update();

// test collisions
scr_entity_check_wall_collisions();
scr_entity_check_block_collisions();
scr_entity_check_placeholder_block_collisions();

if (entity_hit_wall_x || entity_hit_block_x || entity_hit_placeholder_block_x)
{
    velocity_x = -(last_velocity_x);
}

// update object position
x += mx;
y += my;

scr_entity_keep_in_room();

