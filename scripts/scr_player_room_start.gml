///scr_player_room_start()

/**
 * Player: On Room Start
 *
 * Called during this object's Room Start event.
 */

// search for the door the player should exit from
with (obj_door)
{
    if (door_code == CURRENT_DOOR_CODE)
    {
        other.x = x;
        other.y = y - ceil(other.sprite_height / 2);
        can_use_door = false;
        break;
    }
}

// start camera on the player
scr_camera_update(x, y, false);

