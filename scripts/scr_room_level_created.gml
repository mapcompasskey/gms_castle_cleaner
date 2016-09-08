///scr_room_level_created()

/**
 * When a Room is Created
 *
 * Added to the level room's Creation Code.
 */

// make the room persistent
room_persistent = true;

// resize room view to fit window
scr_room_resize_view();

// add the HUD if it doesn't exist
if ( ! instance_exists(obj_hud))
{
    instance_create(0, 0, obj_hud);
}

// add the debug layer
if (DEBUG_MODE)
{
    if ( ! instance_exists(obj_debug_mode))
    {
        instance_create(0, 0, obj_debug_mode);
    }    
}

