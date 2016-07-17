///scr_room_resize_view();

/**
 * Resize the Room's View and Port
 *
 * Add this script to a room's Creation Code.
 * It resizes the view/port/surface of the room to fit the game window.
 * Make sure that "Interpolate colors between pixels" under "Resources > Global Game Settings" is
 * unchecked to preserve pixel perfect scaling.
 */
/*
show_debug_message(TILE_SIZE); // 16
show_debug_message(VIEW_WIDTH) // 400 <- comes from the width of the room's View 0
show_debug_message(VIEW_HEIGHT); // 240 <- comes from the height of the room's View 0

var width = VIEW_WIDTH;
var height = VIEW_HEIGHT;
var aspect_ratio = VIEW_WIDTH / VIEW_HEIGHT;

// if portrait mode
if (VIEW_WIDTH < VIEW_HEIGHT)
{
    height = width / aspect_ratio;
}
// else, if landscape mode
else
{
    width = height * aspect_ratio;
}

show_debug_message("w: " + string(width)); // 400
show_debug_message("h: " + string(height)); // 240

show_debug_message(view_wport[0]); // 400
show_debug_message(view_hport[0]); // 240

show_debug_message(view_wview[0]); // 400
show_debug_message(view_hview[0]); // 240

// resize port
view_wport[0] = width;
view_hport[0] = height;

// resize view
view_wview[0] = width;
view_hview[0] = height;

//view_hborder[0] = width - 32;
//view_vborder[0] = height - 32;
*/

/*
// resize port
view_wport[0] = VIEW_WIDTH;
view_hport[0] = VIEW_HEIGHT;

// resize view
view_wview[0] = VIEW_WIDTH;
view_hview[0] = VIEW_HEIGHT;

// resize application surface
surface_resize(application_surface, VIEW_WIDTH, VIEW_HEIGHT);
display_set_gui_size(VIEW_WIDTH, VIEW_HEIGHT);

// update background color
background_color = BG_COLOR;
*/

/*
VIEW_WIDTH = 400;
VIEW_HEIGHT = 240;

VIEW_WIDTH = 300;
VIEW_HEIGHT = 400;

show_debug_message(TILE_SIZE); // 16
show_debug_message(surface_get_width(application_surface)); // 500
show_debug_message(surface_get_height(application_surface)); // 500

// resize port
view_wport[0] = VIEW_WIDTH;
view_hport[0] = VIEW_HEIGHT;

// resize view
view_wview[0] = VIEW_WIDTH;
view_hview[0] = VIEW_HEIGHT;

// resize application surface
surface_resize(application_surface, VIEW_WIDTH, VIEW_HEIGHT);
display_set_gui_size(VIEW_WIDTH, VIEW_HEIGHT);

// update background color
background_color = BG_COLOR;
*/

/**/
// get the window's width and height
var width = surface_get_width(application_surface);
var height = surface_get_height(application_surface);

// resize the rooms view by a factor of 2
var game_scale = 2;
var scale_width = width / game_scale;
var scale_height = height / game_scale;

// resize port
view_wport[0] = scale_width;
view_hport[0] = scale_height;

// resize view
view_wview[0] = scale_width;
view_hview[0] = scale_height;

// resize application surface
//surface_resize(application_surface, width, height);
//display_set_gui_size(width, height);

// update background color
background_color = BG_COLOR;
/**/

/*
var aspect_ratio = VIEW_WIDTH / VIEW_HEIGHT;

// get the window's width and height
var width = surface_get_width(application_surface);
var height = surface_get_height(application_surface);

// if portrait mode
if (aspect_ratio < 0)
{
    height = width / aspect_ratio;
}
// else, if landscape mode
else
{
    width = height * aspect_ratio;
}

var game_scale = 2; // scale the game by a factor of 2
var scale_width = round(width / game_scale);
var scale_height = round(height / game_scale);

// resize port
view_wport[0] = scale_width;
view_hport[0] = scale_height;

// resize view
view_wview[0] = scale_width;
view_hview[0] = scale_height;

// resize application surface
surface_resize(application_surface, width, height);
//display_set_gui_size(width, height);

// update background color
background_color = BG_COLOR;
*/

