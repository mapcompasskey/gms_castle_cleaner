///scr_player_step()

/**
 * Player: On Update
 *
 * Added to this object's Step event.
 */

// did this instance fall onto a solid object
grounded = was_grounded;

// check instance state
scr_player_check_interactions();
scr_player_is_hurting();
scr_player_is_crouching();
scr_player_is_jumping();
scr_player_is_carrying();
scr_player_is_attacking();
scr_player_is_walking();

// update sprite
scr_player_update_sprite();

