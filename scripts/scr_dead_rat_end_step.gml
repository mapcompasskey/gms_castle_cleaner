///scr_dead_rat_end_step()

/**
 * Dead Rat: On End of Update
 *
 * Called during this object's End Step event.
 */

// if being carried
if (is_being_carried_by != noone)
{
    // reposition onto the object
    with (is_being_carried_by)
    {
        other.x = x;
        other.y = bbox_top;
    }

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

if (entity_hit_wall || entity_hit_block || entity_hit_placeholder_block)
{
    velocity_x = -(last_velocity_x);
}

// update object position
x += mx;
y += my;

scr_entity_keep_in_room();

