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

