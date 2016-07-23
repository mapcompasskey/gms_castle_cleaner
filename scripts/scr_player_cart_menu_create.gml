///scr_player_cart_menu_create()

/**
 * Player Cart Menu Controller: Initialize Variables
 *
 * Added to the player cart menu object's Create event.
 * Loaded into a room whenever the player cart object is interacted with.
 */

// create a snapshot of the scene from the current application surface
var width = surface_get_width(application_surface);
var height = surface_get_height(application_surface);

snapshot_surface = surface_create(width, height);
surface_copy(snapshot_surface, 0, 0, application_surface);

// deactivate everything but this object
instance_deactivate_all(true);


object_array_position = 0;

// object array
/*
    [i, 0] = Name
    [i, 1] = Sprite
*/
var i = 0;
object_array[i, 0] = "Object 1";
object_array[i, 1] = spr_player_cart_item1;

var i = 1;
object_array[i, 0] = "Object 2";
object_array[i, 1] = spr_player_cart_item2;

var i = 2;
object_array[i, 0] = "Object 3";
object_array[i, 1] = spr_player_cart_item3;

