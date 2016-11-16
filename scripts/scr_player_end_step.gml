///scr_player_end_step()

/**
 * Player: On End of Update
 *
 * Called during this object's End Step event.
 */

// apply faux physics
scr_entity_movement_update();

// test collisions
//scr_entity_check_collision_with_platforms();
scr_entity_check_collision_with_solids();

// if was falling
if (last_velocity_y > 0)
{
    if (entity_hit_solid_y)
    {
        was_grounded = true;
    }
}

// update position
x += mx;
y += my;

scr_entity_keep_in_room();

// move towards the player
scr_camera_update(x, y, true);

