///scr_rat_end_step()

/**
 * Rat: On End of Update
 *
 * Added to the rat object's End Step event.
 */

// apply faux physics
scr_entity_movement_update();

// test if at the walls edge
scr_entity_check_wall_edges();

if (entity_at_wall_edge)
{
    key_left = !key_left;
    key_right = !key_right;
}

// test collisions
scr_entity_check_wall_collisions();
scr_entity_check_block_collisions();
scr_entity_check_dying_block_collisions();

if ( ! entity_at_wall_edge)
{
    if (entity_hit_wall || entity_hit_block || entity_hit_dying_block)
    {
        key_left = !key_left;
        key_right = !key_right;
    }
}

// update object position
x += mx;
y += my;

scr_entity_keep_in_room();

