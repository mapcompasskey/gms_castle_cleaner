///scr_game_start_begin_step()

/**
 * Game Start Controller: On Start of Update
 *
 * Added to the game start object's Begin Step event.
 *
 * The player's input check has been moved to a global controller because other objects
 * need to be able to detect and clear the inputs. An example, if the player uses the attack
 * key to pick up an item, the item needs to be able to check them input, then clear it.
 */

// get the player's input
PLAYER_KEY_LEFT = keyboard_check(KEY_LEFT);
PLAYER_KEY_RIGHT = keyboard_check(KEY_RIGHT);
PLAYER_KEY_DOWN = keyboard_check(KEY_DOWN);
PLAYER_KEY_JUMP_PRESSED = keyboard_check_pressed(KEY_JUMP);
PLAYER_KEY_JUMP_RELEASED = keyboard_check_released(KEY_JUMP);
PLAYER_KEY_ACTION = keyboard_check_released(KEY_UP);
PLAYER_KEY_ATTACK_1 = keyboard_check_released(KEY_ATTACK_1);
PLAYER_KEY_ATTACK_2 = keyboard_check_released(KEY_ATTACK_2);

