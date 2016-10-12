///scr_room_menu_created()

/**
 * When the Menu Room is Created
 *
 * Added to the menu room's Creation Code.
 */

// skip the menu during testing
room_goto_next();

// set the Room's background color
background_color = BG_COLOR;

// add the Game Menu object
instance_create(0, 0, obj_game_menu);

