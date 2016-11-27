///scr_item_end_step()

/**
 * Item: On End of Update
 *
 * Added to this object's End Step event.
 */

// if being carried
if (is_being_carried_by != noone)
{
    // new x/y positions
    mx = (is_being_carried_by.x - x);
    my = (is_being_carried_by.bbox_top - y);
    
    // test collisions
    scr_entity_check_collision_with_solids();
    
    if (entity_hit_solid_x || entity_hit_solid_y)
    {
        scr_update_player_and_item(is_being_carried_by, id, 'drop');
    }
    
    // update object position
    x += mx;
    y += my;

    exit;
}

// is this instance standing no a solid object
grounded = place_meeting(x, y + 1, obj_solid);

// apply faux physics
scr_entity_movement_update();

// test collisions
scr_entity_check_collision_with_solids();

if (entity_hit_solid_x)
{
    velocity_x = -(last_velocity_x);
}

// update object position
x += mx;
y += my;

scr_entity_keep_in_room();

