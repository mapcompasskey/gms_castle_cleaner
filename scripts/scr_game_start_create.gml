///scr_game_start_create()

/**
 * Game Start Controller: On Create
 *
 * Set Global Variables
 * The "cont_game_start" is a persistent object that gets added
 * in the creation code of "rm_initialize" when the game begins.
 */

/*
    RIGHT - used when calculating the x speed of entities
    LEFT - used when calculating the x speed of entities
    TICK - the amount of time that has passed since the last step
    GRAV - the gravity
    TILE_SIZE - the default tile size
    GAME_HAS_FOCUS - whether the game window has focus
*/

globalvar RIGHT, LEFT, TICK, GRAV, TILE_SIZE, GAME_HAS_FOCUS;

RIGHT = 1;
LEFT = -1;
TICK = 1;
GRAV = 0.3;
TILE_SIZE = 16;
GAME_HAS_FOCUS = false;


/*
    VIEW_WIDTH  - the width of each Room's View/Port
    VIEW_HEIGHT - the height of each Room's View/Port
    BG_COLOR - the background color of each Room
*/

globalvar VIEW_WIDTH, VIEW_HEIGHT, BG_COLOR;

VIEW_WIDTH = 400;
VIEW_HEIGHT = 240;
BG_COLOR = make_color_rgb(25, 25, 25); //c_black;

// resize game window at start
// *or set the Width/Height of the first room (under the Settings tab)
//var width = 500;
//var height = 500;
//window_set_size(width, height);
//window_center();

