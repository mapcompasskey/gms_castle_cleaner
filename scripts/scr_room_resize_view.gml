///scr_room_resize_view();

/**
 * Resize the Room's View/Port and the Application Surface
 *
 * Add this script to a room's Creation Code.
 * It resizes and scales the Room's View/Port/Surface to fit within the game window.
 *
 * Make sure that "Interpolate colors between pixels" under "Resources > Global Game Settings" is
 * unchecked to preserve pixel perfect scaling.
 *
 * The room must have the following settings checked under the "views" tab:
 *  "Enable the use of Views"
 *  "Clear Background with Window Colour"
 *  "View 0" selected
 *  "Visible when room starts"
 * /

// get the desired game size
var aspect_ratio = VIEW_WIDTH / VIEW_HEIGHT;

// get the window's actual width and height
var width = window_get_width();
var height = window_get_height();

// if portrait mode
if (aspect_ratio < 0)
{
    width = width / aspect_ratio;
}
// else, if landscape mode
else
{
    height = height / aspect_ratio;
}

// scale the size of the Room's View/Port
var scale_width = round(width / GAME_SCALE);
var scale_height = round(height / GAME_SCALE);

// resize port
view_wport[0] = scale_width;
view_hport[0] = scale_height;

// resize view
view_wview[0] = scale_width;
view_hview[0] = scale_height;

// resize application surface
surface_resize(application_surface, scale_width, scale_height);

// update background color
background_color = BG_COLOR;

*/

//view_wview[0] = VIEW_WIDTH;
//view_hview[0] = VIEW_HEIGHT;
//display_set_gui_size((VIEW_WIDTH * VIEW_SCALE), (VIEW_HEIGHT * VIEW_SCALE));

// update background color
background_color = BG_COLOR;

