///scr_block_end_step()

/**
 * Block: On End of Update
 *
 * Called during this object's End Step event.
 */

// if the object has stopped falling
if ( ! falling_counter)
{
    exit;
}

// apply faux physics
scr_entity_movement_update();

// test collisions
scr_entity_check_wall_collisions();
scr_entity_check_block_collisions();

// update object position
x += mx;
y += my;

scr_entity_keep_in_room();

