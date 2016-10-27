///scr_player_cart_menu_create()

/**
 * Player Cart Menu Controller: Initialize Variables
 *
 * Added to the player cart menu object's Create event.
 * Loaded into a room whenever the player cart object is interacted with.
 */

object_array_position = 0;

// object array
/*
    [i, 0] = ID
    [i, 1] = Sprite
    [i, 2] = Name
*/
var i = 0;
object_array[i, 0] = 'broom';
object_array[i, 1] = spr_player_cart_broom;
object_array[i, 2] = 'Grab A New Broom';

var i = 1;
object_array[i, 0] = 'mousetrap';
object_array[i, 1] = spr_player_cart_mouse_trap;
object_array[i, 2] = 'Mouse Trap';

var i = 2;
object_array[i, 0] = 'cheese';
object_array[i, 1] = spr_player_cart_cheese;
object_array[i, 2] = 'Cheese';

var i = 3;
object_array[i, 0] = 'close';
object_array[i, 1] = spr_player_cart_close;
object_array[i, 2] = 'Close Cart';

// create a snapshot of the scene from the current application surface
var width = surface_get_width(application_surface);
var height = surface_get_height(application_surface);
snapshot_surface = surface_create(width, height);
surface_copy(snapshot_surface, 0, 0, application_surface);

// deactivate everything but this object
instance_deactivate_all(true);

