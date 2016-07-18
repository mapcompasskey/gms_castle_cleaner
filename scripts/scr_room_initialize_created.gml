///scr_room_initialize_created()

/**
 * When the Initialize Room is Created
 *
 * Add this script to a room's Creation Code.
 */

// add the Game Start object
instance_create(0, 0, obj_game_start);

// goto the next room
room_goto_next();

