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

globalvar RIGHT, LEFT, TICK, GRAV, TILE_SIZE, GAME_HAS_FOCUS, DEBUG_MODE, BORDER_COLOR, HIGHLIGHT_BORDER_COLOR;

RIGHT = 1;
LEFT = -1;
TICK = 1;
GRAV = 0.3;
TILE_SIZE = 16;
GAME_HAS_FOCUS = false;
DEBUG_MODE = false;
BORDER_COLOR = c_black;
HIGHLIGHT_BORDER_COLOR = c_white;


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
    VIEW_WIDTH - The width of the first Room's View.
    VIEW_HEIGHT - The height of the first Room's View.
    VIEW_SCALE - The factor to scale every Room's View.
    RESIZE_SURFACE - Whether to keep trying to resize the application surface.
    BG_COLOR - The color to repaint each Room's View.
*/

globalvar VIEW_WIDTH, VIEW_HEIGHT, VIEW_SCALE, RESIZE_SURFACE, BG_COLOR;

VIEW_WIDTH = view_wview[0];
VIEW_HEIGHT = view_hview[0];
VIEW_SCALE = 1;//3;
RESIZE_SURFACE = true;
BG_COLOR = make_color_rgb(20, 12, 28); // dark purple

// enabled Views in every Room and update the size
var i = true;
var rm = room_next(room);
while (i)
{
    room_set_view(rm, 0, true, 0, 0, VIEW_WIDTH, VIEW_HEIGHT, 0, 0, VIEW_WIDTH, VIEW_HEIGHT, 0, 0, -1, -1, -1);
    room_set_view_enabled(rm, true);
    if (rm == room_last)
    {
        i = false;
    }
    else
    {
        rm = room_next(rm);
    }
}


/*
    PLAYER_FOO - variable to test player cart menu
    DEAD_RAT_ITEMS_COLLECTED - variable to track item destruction
*/

globalvar PLAYER_FOO, DEAD_RAT_ITEMS_COLLECTED;

PLAYER_FOO = 'bar';
DEAD_RAT_ITEMS_COLLECTED = 0;

globalvar PLAYER_BROOM_IS_BROKEN, PLAYER_BROOM_CURRENT_HEALTH, PLAYER_BROOM_MAXIMUM_HEALTH;

PLAYER_BROOM_IS_BROKEN = false;
PLAYER_BROOM_CURRENT_HEALTH = 10;
PLAYER_BROOM_MAXIMUM_HEALTH = 10;

globalvar PLAYER_IS_CARRYING;

PLAYER_IS_CARRYING = '';

