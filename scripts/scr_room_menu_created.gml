///scr_room_menu_created()

/**
 * When the Menu Room is Created
 *
 * Add this script to a room's Creation Code.
 */

// skip the menu during testing
room_goto_next();

// resize room view to fit window
scr_room_resize_view();

// add the Game Menu object
instance_create(0, 0, obj_game_menu);

