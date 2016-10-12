///scr_get_gui_position_x(location)

/**
 * Return the X Position of the GUI
 *
 */

var pos = 0;

// [x1, y1, x2, y2]
var a = application_get_position();

if (argument0 == 'left')
{
    pos = a[0];
}
else if (argument0 == 'center')
{
    pos = ((a[2] - a[0]) / 2);
}
else if (argument0 == 'right')
{
    pos = a[2];
}

return round(pos);

