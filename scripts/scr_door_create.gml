///scr_door_create()

/**
 * Door: Initialize Variables
 *
 * 'can_use_door' gets set to false whenever the obj_player exits through it.
 */

door_text = 'PRESS UP'
show_text = false;

can_use_door = true;
disabled_time = 60; // 2 seconds
disabled_timer = 0;

/*
    door_code - This door's unique identifier. Used to find where to start the player when the room with this door loads.
    exit_room_id - The id of the room to load.
    exit_door_code - The door_code to search for when entering a room.
*/

door_code = '1-01'; // room 1, door 01
exit_room_id = noone; // ie: rm_level_2
exit_door_code = '2-01'; // room 2, door 01

