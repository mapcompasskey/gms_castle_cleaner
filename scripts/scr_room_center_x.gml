///scr_room_center_x

// find the center x position of the screen
var width = surface_get_width(application_surface);
var pos_x = round((width * GAME_SCALE) / 2);
return pos_x;

