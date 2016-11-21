///scr_game_start_begin_step()

/**
 * Game Start Controller: On Start of Update
 *
 * Added to the game start object's Begin Step event.
 *
 * The player's input check has been moved to a global controller in the event
 * other objects need to be able to detect and clear the inputs. 
 */

// get the player's input
global.PLAYER_KEY_LEFT = keyboard_check(global.KEY_LEFT);
global.PLAYER_KEY_RIGHT = keyboard_check(global.KEY_RIGHT);
global.PLAYER_KEY_DOWN = keyboard_check(global.KEY_DOWN);
global.PLAYER_KEY_JUMP_PRESSED = keyboard_check_pressed(global.KEY_JUMP);
global.PLAYER_KEY_JUMP_RELEASED = keyboard_check_released(global.KEY_JUMP);
global.PLAYER_KEY_ACTION = keyboard_check_pressed(global.KEY_UP);
global.PLAYER_KEY_ATTACK_1 = keyboard_check_pressed(global.KEY_ATTACK_1);

