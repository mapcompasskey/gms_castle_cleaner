///scr_player_cart_menu_step()

/**
 * Player Cart Menu Controller: On Update
 *
 * Added to the player cart menu object's Step event.
 */

var on_exit_menu = false;
var exit_with_mouse_trap = false;
var exit_with_cheese = false;

// on object selection move
var on_object_navigation = 0;
on_object_navigation -= max(keyboard_check_pressed(global.KEY_LEFT), 0);
on_object_navigation += max(keyboard_check_pressed(global.KEY_RIGHT), 0);

// move to the next item, wrap around if reached an end
if (on_object_navigation != 0)
{
    object_array_position += on_object_navigation;
    if (object_array_position < 0)
    {
        object_array_position = (array_height_2d(object_array) - 1);
    }
    else if (object_array_position > (array_height_2d(object_array) - 1))
    {
        object_array_position = 0;
    }
}

// on object selected
var on_object_selected = 0;
on_object_selected = max(keyboard_check_pressed(global.KEY_ENTER), keyboard_check_pressed(global.KEY_ATTACK_1));
if (on_object_selected == 1)
{
    var object_id = object_array[object_array_position, 0];
    
    // if selecting a new broom
    if (object_id == 'broom')
    {
        // refill broom uses
        global.PLAYER_BROOM_IS_BROKEN = false;
        global.PLAYER_BROOM_CURRENT_HEALTH = global.PLAYER_BROOM_MAXIMUM_HEALTH;
    }
    
    // else, if selecting the mouse trap item
    else if (object_id == 'mousetrap')
    {
        exit_with_mouse_trap = true;
    }
    
    // else, if selecting the cheese item
    else if (object_id == 'cheese')
    {
        exit_with_cheese = true;
    }
    
    var object_text = object_array[object_array_position, 2];
    
    on_exit_menu = true;
}

// if ESC key is pressed
if (keyboard_check_pressed(global.KEY_ESCAPE))
{
    on_exit_menu = true;
}

// exit menu
if (on_exit_menu)
{
    // clear inputs
    io_clear();
    
    // destory the surface, freeing it from memory
    if (surface_exists(snapshot_surface))
    {
        surface_free(snapshot_surface);
    }
    
    // activate everything
    instance_activate_all();
    
    // if an item was selected
    // *player must be active before being interacted with
    if (exit_with_mouse_trap || exit_with_cheese)
    {
        with (obj_player)
        {
            if ( ! carrying)
            {
                var item = noone;
                
                // create the item
                if (exit_with_mouse_trap)
                {
                    item = instance_create(x, y, obj_mouse_trap);
                }
                else if (exit_with_cheese)
                {
                    item = instance_create(x, y, obj_cheese);
                }
                
                // update the player and item
                scr_update_player_and_item(id, item, 'pickup'); 
            }
        }
        
        exit_with_mouse_trap = false;
        exit_with_cheese = false;
    }
    
    // destroy the pause screen
    instance_destroy();
}

