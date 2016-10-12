///scr_get_gui_center(point)

/**
 * Return the Center X or Y Position of the GUI
 *
 */

var pos = 0;

// if getting the x position
if (argument0 == 'x')
{
    // find the center x position of the surface
    var a = application_get_position();
    var center_x = ((a[2] - a[0]) / 2);
    
    pos = round(center_x);
}

// else, if getting the y position
else if (argument0 == 'y')
{
    // find the center y position of the surface
    var a = application_get_position();
    var center_y = ((a[3] - a[1]) / 2);
    
    pos = round(center_y);
}

return pos;

