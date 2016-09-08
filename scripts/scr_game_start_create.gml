///scr_game_start_create()

/**
 * Game Start Controller: On Create
 *
 * Added to the game start object's Create event.
 *
 * Set Global Variables
 * The "obj_game_start" is a persistent object that gets added
 * in the creation code of "rm_initialize" when the game begins.
 */

// this object must be persistent
if ( ! persistent)
{
    persistent = true;
}

/*
    RIGHT - used when calculating the x speed of entities
    LEFT - used when calculating the x speed of entities
    TICK - the amount of time that has passed since the last step
    GRAV - the gravity
    TILE_SIZE - the default tile size
    GAME_HAS_FOCUS - whether the game window has focus
    DEBUG_MODE - show bouding boxes
    BORDER_COLOR - default border color for sprites
*/

globalvar RIGHT, LEFT, TICK, GRAV, TILE_SIZE, GAME_HAS_FOCUS, DEBUG_MODE, BORDER_COLOR;

RIGHT = 1;
LEFT = -1;
TICK = 1;
GRAV = 0.3;
TILE_SIZE = 16;
GAME_HAS_FOCUS = false;
DEBUG_MODE = false;
BORDER_COLOR = c_black;


/*
    The input keys - should be self explanatory
*/

globalvar KEY_LEFT, KEY_RIGHT, KEY_UP, KEY_DOWN;
globalvar KEY_JUMP, KEY_ATTACK_1, KEY_ATTACK_2;
globalvar KEY_ESCAPE, KEY_ENTER;

KEY_LEFT = vk_left;
KEY_RIGHT = vk_right;
KEY_UP = vk_up;
KEY_DOWN = vk_down;
KEY_JUMP = ord("C");
KEY_ATTACK_1 = ord("Z");
KEY_ATTACK_2 = ord("X");
KEY_ESCAPE = vk_escape;
KEY_ENTER = vk_enter;

globalvar PLAYER_KEY_LEFT, PLAYER_KEY_RIGHT, PLAYER_KEY_DOWN;
globalvar PLAYER_KEY_JUMP_PRESSED, PLAYER_KEY_JUMP_RELEASED, PLAYER_KEY_ACTION;
globalvar PLAYER_KEY_ATTACK_1, PLAYER_KEY_ATTACK_2;

PLAYER_KEY_LEFT = false;
PLAYER_KEY_RIGHT = false;
PLAYER_KEY_DOWN = false;
PLAYER_KEY_JUMP_PRESSED = false;
PLAYER_KEY_JUMP_RELEASED = false;
PLAYER_KEY_ACTION = false;
PLAYER_KEY_ATTACK_1 = false;
PLAYER_KEY_ATTACK_2 = false;

globalvar ACTION_KEY_TEXT;

ACTION_KEY_TEXT = 'UP';


/*
    CURRENT_DOOR_CODE - The code of the door being exited from. Used to place the player during their "Room Start" event.
    CURRENT_ROOM_ID - The id of the room being exited into. *Not used at the moment since the built in "room" variable returns the current room's id.
    PREVIOUS_DOOR_CODE - The previous door exited from. *Not used at the moment.
    PREVIOUS_ROOM_ID - The id of the previous room. Used to determine which destroyed enemies in which rooms to allow a respawn.
*/

globalvar CURRENT_DOOR_CODE, CURRENT_ROOM_ID, PREVIOUS_DOOR_CODE, PREVIOUS_ROOM_ID;

CURRENT_DOOR_CODE = '';
CURRENT_ROOM_ID = noone;
PREVIOUS_DOOR_CODE = '';
PREVIOUS_ROOM_ID = noone;


/*
    GAME_SCALE - the scale factor to apply to each Room's View/Port
    VIEW_WIDTH  - the width of each Room's View/Port
    VIEW_HEIGHT - the height of each Room's View/Port
    BG_COLOR - the background color of each Room
    
    The VIEW_WIDTH and VIEW_HEIGHT are used to determine an aspect ratio to use when scaling the game to the window size.
    So if the VIEW_WIDTH x VIEW_HEIGHT is 400x240, and the game window is 500x500, and the GAME_SCALE is 2, each Room's View/Port
    will be resized 250x150. So when scaled up by a factor of 2, the size of the room becomes 500x300 - which is 1:1.6666 (400:240);
*/

globalvar GAME_SCALE, VIEW_WIDTH, VIEW_HEIGHT, BG_COLOR;

VIEW_WIDTH = 400;
VIEW_HEIGHT = 240;
GAME_SCALE = 3;
//BG_COLOR = make_color_rgb(25, 25, 25); //c_black;
BG_COLOR = make_color_rgb(20, 12, 28); // dark purple
//BG_COLOR = make_color_rgb(48, 52, 109); // blue
//BG_COLOR = make_color_rgb(109, 194, 202); // light blue

// resize game window at start
// *or set the Width/Height of the first room (under the Settings tab)
//var width = 500;
//var height = 500;
//window_set_size(width, height);
//window_center();


/*
    PLAYER_FOO - variable to test player cart menu
    DEAD_RAT_ITEMS_COLLECTED - variable to track item destruction
*/

globalvar PLAYER_FOO, DEAD_RAT_ITEMS_COLLECTED;

PLAYER_FOO = 'bar';
DEAD_RAT_ITEMS_COLLECTED = 0;

