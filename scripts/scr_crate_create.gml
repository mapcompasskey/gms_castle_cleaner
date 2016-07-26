///scr_crate_create()

/**
 * Crate: Initialize Variables
 *
 * Added to the crate object's Create event.
 */

/*
will need to function as a wall until it is destroyed
should also be affected by gravity, so if the crate underneath it is destroyed, it'll fall

to prevent unessessary step calculations, i can wait until a crate is destroyed,
then have it inform the crates touching it of the update and they can begin falling until the crate
below has stopped on a solid wall

so when a crate is destroyed, let the crates directly above it know they need to start falling

if the crate are "wall" type objects, then depending on the order of when their "end step" event
is called, a higher crate might fall onto a lower crate before its had a chance to fall, causing
the higher crate to think its hit the ground - so they may need to check for a couple of extra
steps whether they have reached the ground - give everything a chance to settle
*/

scr_entity_movement_vars();

speed_x = 0;
speed_y = 4;
max_velocity_x = 0;
max_velocity_y = speed_y * 2;

current_health = 1;
maximum_health = 5;

// number of steps this object is effected by gravity after hitting the ground
falling_count = 3;
falling_counter = 3;

