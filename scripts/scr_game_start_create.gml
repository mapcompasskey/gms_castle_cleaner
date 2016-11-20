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


// PLAYER - the instance id of the player
// RIGHT - used when calculating the x speed of entities
// LEFT - used when calculating the x speed of entities
// TICK - the amount of time that has passed since the last step
// GRAV - the gravity
// GAME_HAS_FOCUS - whether the game window has focus
// DEBUG_MODE - show bouding boxes
// BORDER_COLOR - default border color for sprites
// BORDER_COLOR - default border color for highlighted sprites

global.PLAYER = noone;
global.RIGHT = 1;
global.LEFT = -1;
global.TICK = 1;
global.GRAV = 0.3;
global.GAME_HAS_FOCUS = false;
global.DEBUG_MODE = false;
global.BORDER_COLOR = c_black;
global.HIGHLIGHT_BORDER_COLOR = c_white;


// input key display text
global.ACTION_KEY_TEXT = 'UP';

// input keys to listen for
// *set as globals so they can be remapped
global.KEY_LEFT = vk_left;
global.KEY_RIGHT = vk_right;
global.KEY_UP = vk_up;
global.KEY_DOWN = vk_down;
global.KEY_JUMP = ord("C");
global.KEY_ATTACK_1 = ord("Z");
global.KEY_ATTACK_2 = ord("X");
global.KEY_ESCAPE = vk_escape;
global.KEY_ENTER = vk_enter;

// player inputs
// *set as globals so other object can detect and reset
global.PLAYER_KEY_LEFT = false;
global.PLAYER_KEY_RIGHT = false;
global.PLAYER_KEY_DOWN = false;
global.PLAYER_KEY_JUMP_PRESSED = false;
global.PLAYER_KEY_JUMP_RELEASED = false;
global.PLAYER_KEY_ACTION = false;
global.PLAYER_KEY_ATTACK_1 = false;
global.PLAYER_KEY_ATTACK_2 = false;


// CURRENT_DOOR_CODE - The code of the door being exited from. Used to place the player during their "Room Start" event.
// CURRENT_ROOM_ID - The id of the room being exited into. *Not used at the moment since the built in "room" variable returns the current room's id.
// PREVIOUS_DOOR_CODE - The previous door exited from. *Not used at the moment.
// PREVIOUS_ROOM_ID - The id of the previous room. Used to determine which destroyed enemies in which rooms to allow a respawn.

global.CURRENT_DOOR_CODE = '';
global.CURRENT_ROOM_ID = noone;
global.PREVIOUS_DOOR_CODE = '';
global.PREVIOUS_ROOM_ID = noone;


// DEAD_RAT_ITEMS_COLLECTED - variable to track item destruction
// PLAYER_BROOM_IS_BROKEN - variable to track whether broom is broken
// PLAYER_BROOM_CURRENT_HEALTH - variable used to track broom health
// PLAYER_BROOM_MAXIMUM_HEALTH - variable used to reset broom health

global.DEAD_RAT_ITEMS_COLLECTED = 0;
global.PLAYER_BROOM_IS_BROKEN = false;
global.PLAYER_BROOM_CURRENT_HEALTH = 10;
global.PLAYER_BROOM_MAXIMUM_HEALTH = 10;


/**
 * Update Every Room's Dimensions
 *
 * This is an easy way to dynamically update all the rooms to match when the final
 * game's width and height is undetermined. Ultimately, hard-coded values would be
 * faster but it may also be necessary if the user is able to resize the game to fit
 * their screen.
 */

// enabled and set the size of every room's view/port to the size of the first room
var view_width = view_wview[0];
var view_height = view_hview[0];
var bg_color = make_color_rgb(20, 12, 28); // dark purple

var more_rooms = true;
var rm = room_next(room);
while (more_rooms)
{
    room_set_view(rm, 0, true, 0, 0, view_width, view_height, 0, 0, view_width, view_height, 0, 0, -1, -1, -1);
    room_set_view_enabled(rm, true);
    room_set_background_colour(rm, bg_color, true);
    if (rm == room_last)
    {
        more_rooms = false;
    }
    else
    {
        rm = room_next(rm);
    }
}


