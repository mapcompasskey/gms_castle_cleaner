///scr_game_menu_step()

/**
 * Game Menu Controller: On Update
 *
 * Added to the game menu object's Step event.
 */

// on menu move
var on_menu_move = 0;
on_menu_move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
on_menu_move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

if (on_menu_move != 0)
{
    menu_position += on_menu_move;
    if (menu_position < 0)
    {
        menu_position = (array_height_2d(menu_options) - 1);
    }
    else if (menu_position > (array_height_2d(menu_options) - 1))
    {
        menu_position = 0;
    }
}

// on menu select
var menu_option_id = 0;
var on_menu_select;
on_menu_select = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_shift), keyboard_check_released(vk_space), 0);
if (on_menu_select == 1)
{
    menu_option_id = menu_options[menu_position, 0];
    switch (menu_option_id)
    {
        case "start":
            room_goto_next();
            break;
        
        case "quit":
            game_end();
            break;
    }
}

