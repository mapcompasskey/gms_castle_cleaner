///scr_entity_update_image_xscale();

/**
 * Update the Direction the Object is Facing
 *
 * Include in the Step Event of an object.
 */

if (facing == RIGHT)
{
    image_xscale = 1;
}
else if (facing == LEFT)
{
    image_xscale = -1;
}

