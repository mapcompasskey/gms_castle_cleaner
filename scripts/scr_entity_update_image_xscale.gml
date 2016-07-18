///scr_entity_update_image_xscale()

/**
 * Update the Direction the Object is Facing
 *
 * Include in an object's Step event.
 */

if (facing == RIGHT)
{
    image_xscale = 1;
}
else if (facing == LEFT)
{
    image_xscale = -1;
}

