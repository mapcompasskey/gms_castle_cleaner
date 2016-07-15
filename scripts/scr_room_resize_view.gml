///scr_room_resize_view();

/**
 * Resize the Room's View and Port
 *
 * Add this script to a room's Creation Code.
 * It resizes the view/port/surface of the room to fit the game window.
 * Make sure that "Interpolate colors between pixels" under "Resources > Global Game Settings" is
 * unchecked to preserve pixel perfect scaling.
 */

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

// resize port
view_wport[0] = width;
view_hport[0] = height;

// resize view
view_wview[0] = width;
view_hview[0] = height;

//view_hborder[0] = width - 32;
//view_vborder[0] = height - 32;

// resize application surface
surface_resize(application_surface, width, height);
display_set_gui_size(width, height);

// update background color
background_color = BG_COLOR;

