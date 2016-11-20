///scr_spider_end_step()

/**
 * Spider: On End of Update
 *
 * Added to this object's End Step event.
 */

// apply faux physics
scr_entity_movement_update();

// if reached the edge of a solid
/*scr_entity_check_edge_of_solids();

if (entity_at_edge_of_solid)
{
    key_left = !key_left;
    key_right = !key_right;
}*/

// test collisions
scr_entity_check_collision_with_solids();

if (entity_hit_solid_x)
{
    key_left = !key_left;
    key_right = !key_right;    
}

// update position
x += mx;
y += my;

scr_entity_keep_in_room();

