///scr_get_gui_position(axis, location)

/**
 * Return the X or Y Position of the GUI
 *
 */

var pos = 0;

// [x1, y1, x2, y2]
var a = application_get_position();

if (argument0 == 'x')
{
    if (argument1 == 'left')
    {
        pos = a[0];
    }
    else if (argument1 == 'center')
    {
        pos = ((a[2] - a[0]) / 2);
    }
    else if (argument1 == 'right')
    {
        pos = (a[2] - a[0]);
    }
}
else if (argument0 == 'y')
{
    if (argument1 == 'top')
    {
        pos = a[1];
    }
    else if (argument1 == 'center')
    {
        pos = ((a[3] - a[1]) / 2);
    }
    else if (argument1 == 'bottom')
    {
        pos = (a[3] - a[1])
    }
}

return round(pos);

