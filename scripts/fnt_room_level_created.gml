///fnt_room_level_created();

/**
 * When a Room is Created
 *
 * Add this script to a room's Creation Code.
 */

// resize view to fit window
fnt_resize_room_view();

// add the HUD if it doesn't exist
if ( ! instance_exists(obj_hud))
{
    instance_create(0, 0, obj_hud);
}

