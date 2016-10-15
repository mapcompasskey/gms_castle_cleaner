///scr_player_cart_menu_create()

/**
 * Player Cart Menu Controller: Initialize Variables
 *
 * Added to the player cart menu object's Create event.
 * Loaded into a room whenever the player cart object is interacted with.
 */

on_exit_menu = false;
object_array_position = 0;

// object array
/*
    [i, 0] = Name
    [i, 1] = Sprite
    [i, 2] = ID
*/
var i = 0;
object_array[i, 0] = 'item1';
object_array[i, 1] = spr_player_cart_item1;
object_array[i, 2] = 'Item 1';

var i = 1;
object_array[i, 0] = 'item2';
object_array[i, 1] = spr_player_cart_item2;
object_array[i, 2] = 'Item 2';

var i = 2;
object_array[i, 0] = 'item3';
object_array[i, 1] = spr_player_cart_item3;
object_array[i, 2] = 'Item 3';

var i = 3;
object_array[i, 0] = 'broom';
object_array[i, 1] = spr_player_cart_broom;
object_array[i, 2] = 'Grab A New Broom';

// highlight the selected item
var i, name;
for (i = 0; i < array_height_2d(object_array); i++)
{
    name = object_array[i, 2];
    if (PLAYER_FOO == name)
    {
        object_array_position = i;
    }
}

// create a snapshot of the scene from the current application surface
var width = surface_get_width(application_surface);
var height = surface_get_height(application_surface);
snapshot_surface = surface_create(width, height);
surface_copy(snapshot_surface, 0, 0, application_surface);

// deactivate everything but this object
instance_deactivate_all(true);

