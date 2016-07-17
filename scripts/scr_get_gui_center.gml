///scr_get_gui_center(point)

/**
 * Return the Center X or Y Position of the GUI
 *
 */

var pos = 0;

// if getting the x position
if (argument0 == 'x')
{
    // find the center x position of the screen
    var width = surface_get_width(application_surface);
    pos = round((width * GAME_SCALE) / 2);
}

// else, if getting the y position
else if (argument0 == 'y')
{
    // find the center y position of the screen
    var height = surface_get_height(application_surface);
    pos = round((height * GAME_SCALE) / 2);   
}

return pos;

