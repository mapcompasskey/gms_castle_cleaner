///scr_dying_block_animation_end()

/**
 * Dying Block: On Animation End
 *
 * Called during this object's Animation End event.
 *
 * When a block is destroyed, it is immediately removed and replaced with a dying block object.
 * The dying block acts as a different type of wall object. This prevents the player or NPC entities
 * from rushing into the area created when the block is removed and being crushed by, or just stuck under,
 * a falling block. But other blocks don't test for that collision and will pass through them.
 */

instance_destroy();

