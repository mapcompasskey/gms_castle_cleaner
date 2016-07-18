///scr_game_menu_create()

/**
 * Game Menu Controller: Initialize Variables
 *
 */

// logo options
logo_x = view_wview[0] / 2;
logo_y = TILE_SIZE * 2;

// menu options
/*
    [i, 0] = Name
    [i, 1] = Align Horizontally [left|center|right]
    [i, 2] = Align Vertically [top|middle|bottom]
    [i, 3] = X Offset
    [i, 4] = Y Offset
*/
menu_position = 0;

var i = 0;
menu_options[i, 0] = "Start";
menu_options[i, 1] = "right";
menu_options[i, 2] = "bottom";
menu_options[i, 3] = -TILE_SIZE;
menu_options[i, 4] = -TILE_SIZE * 2;

var i = 1;
menu_options[i, 0] = "Quit";
menu_options[i, 1] = "right";
menu_options[i, 2] = "bottom";
menu_options[i, 3] = -TILE_SIZE;
menu_options[i, 4] = -TILE_SIZE;

