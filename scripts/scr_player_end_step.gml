///scr_player_end_step()

/**
 * Player: On End of Update
 *
 * Called during this object's End Step event.
 */

// apply faux physics
scr_entity_movement_update();

// if on a ladder, being pushed down and not crouching
if (on_ladder && my > 0 && ! crouching)
{
    // reset y step movement and velocity
    my = 0;
    velocity_y = 0;
}

// test collisions
scr_entity_check_wall_collisions();
scr_entity_check_block_collisions();
scr_entity_check_placeholder_block_collisions();

// update object position
x += mx;
y += my;

scr_entity_keep_in_room();

// move towards the player
scr_camera_update(x, y, true);

