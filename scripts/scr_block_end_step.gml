///scr_block_end_step()

/**
 * Block: On End of Update
 *
 * Called during this object's End Step event.
 */

// if no longer falling
if ( ! falling_counter)
{
    exit;
}

// apply faux physics
scr_entity_movement_update();

// test collisions
scr_entity_check_collision_with_walls();
scr_entity_check_collision_with_blocks();

// update position
x += mx;
y += my;

scr_entity_keep_in_room();

