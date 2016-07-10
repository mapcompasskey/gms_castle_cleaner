/**
 * Game Start Controller: Set Global Variables
 *
 * The "cont_game_start" is a persistent object that gets added
 * in the creation code of "rm_initialize" when the game begins.
 */

/*
    RIGHT - used when calculating the x speed of entities
    LEFT - used when calculating the x speed of entities
    TICK - the amount of time that has passed since the last step
    GRAV - the gravity
    TILE_SIZE - the default tile size
*/

globalvar RIGHT, LEFT, TICK, GRAV, TILE_SIZE;

RIGHT = 1;
LEFT = -1;
TICK = 1;
GRAV = 0.5;
TILE_SIZE = 32;

