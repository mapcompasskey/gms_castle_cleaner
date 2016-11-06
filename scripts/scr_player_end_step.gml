///scr_player_end_step()

/**
 * Player: On End of Update
 *
 * Called during this object's End Step event.
 */

// apply faux physics
scr_entity_movement_update();

// if on a ladder, being pushed down (gravity) and not crouching
if (on_ladder && my > 0 && ! crouching)
{
    // reset y step movement and velocity
    my = 0;
    velocity_y = 0;
}

// test collisions
scr_entity_check_collision_with_platforms();
scr_entity_check_collision_with_solids();

// update position
x += mx;
y += my;

scr_entity_keep_in_room();

// move towards the player
scr_camera_update(x, y, true);

