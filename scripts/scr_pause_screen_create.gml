///scr_pause_screen_create()

/**
 * Pause Screen Controller: Initialize Variables
 *
 * Loaded into a room whenever the "ESC" key is pressed.
 */

// create a snapshot of the scene from the current application surface
//snapshot_surface = surface_create(view_wview[0], view_hview[0]);
//surface_copy(snapshot_surface, 0, 0, application_surface);

show_debug_message(view_wview[0]);
show_debug_message(view_hview[0]);

var width = surface_get_width(application_surface);
var height = surface_get_height(application_surface);
show_debug_message(width);
show_debug_message(height);

snapshot_surface = surface_create(width, height);
surface_copy(snapshot_surface, 0, 0, application_surface);

// deactivate everything but this object
instance_deactivate_all(true);

