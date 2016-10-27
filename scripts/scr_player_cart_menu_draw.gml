///scr_player_cart_menu_draw()

/**
 * Player Cart Menu Controller: On Draw
 *
 * Added to the player cart menu object's Draw event.
 */

/*
// draw the snapshot
if (surface_exists(snapshot_surface))
{
    //draw_surface(snapshot_surface, view_xview[0], view_yview[0]);
    draw_surface_stretched(snapshot_surface, view_xview[0], view_yview[0], round(view_wview[0]), round(view_hview[0]));
}

// darken the background by drawing a faded black rectangle over it
draw_set_color(c_black);
draw_set_alpha(0.4);
draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0], 0);
draw_set_alpha(1); // reset alpha

// draw ESC text
var pos_x = (view_xview[0] + view_wview[0] - 1);
var pos_y = (view_yview[0] + 1);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_font(fnt_silkscreen_game);
draw_text(pos_x, pos_y, '"ESC" TO CLOSE');

// draw menu background container
var pos_x1 = round(view_xview[0] + TILE_SIZE);
var menu_y1 = round(view_yview[0] + TILE_SIZE);
var menu_x2 = round(pos_x1 + view_wview[0] - TILE_SIZE - TILE_SIZE);
var menu_y2 = round(menu_y1 + view_hview[0] - TILE_SIZE - TILE_SIZE);
draw_set_colour(c_blue);
draw_set_alpha(0.1);
draw_rectangle(pos_x1, menu_y1, menu_x2, menu_y2, false);
draw_set_alpha(1); // reset alpha

// draw menu background border
draw_set_colour(c_blue);
draw_rectangle(pos_x1, menu_y1, menu_x2, menu_y2, true);

// draw items in object array
var object_text = '';
var alpha = 1;
var pos_x = ((view_xview[0] + TILE_SIZE) + 10);
var pos_y = ((view_yview[0] + TILE_SIZE) + 10);

var i, sprite;
for (i = 0; i < array_height_2d(object_array); i++)
{
    sprite = object_array[i, 1];
    if (sprite != noone)
    {
        // if item is selected
        if (i == object_array_position)
        {
            // get item name
            object_text = object_array[i, 2];
            
            // draw selection sprite
            draw_sprite(spr_player_cart_selection, 0, (pos_x - 1), (pos_y - 1));
        }
        
        // draw the sprite
        //draw_sprite(sprite, 0, pos_x, pos_y);
        draw_sprite_ext(sprite, 0, pos_x, pos_y, 1, 1, 0, c_white, alpha);
        
        // update the x/y positioning
        pos_x += (sprite_get_width(sprite) + 10);
        pos_y += 0;
    }
}

// draw selected item's text
var pos_x = (view_xview[0] + (view_wview[0] / 2));
var pos_y = (view_yview[0] + view_hview[0] - TILE_SIZE);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_font(fnt_silkscreen_game);
draw_text(pos_x, pos_y, object_text);
*/

// draw the snapshot
if (surface_exists(snapshot_surface))
{
    //draw_surface(snapshot_surface, view_xview[0], view_yview[0]);
    draw_surface_stretched(snapshot_surface, view_xview[0], view_yview[0], round(view_wview[0]), round(view_hview[0]));
}

// darken the background by drawing a faded black rectangle over it
draw_set_color(c_black);
draw_set_alpha(0.4);
draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0], 0);
draw_set_alpha(1); // reset alpha

// draw menu background container
var menu_padding = 10;
var menu_x1 = round(view_xview[0] + menu_padding);
var menu_y1 = round(view_yview[0] + menu_padding);
var menu_x2 = round(menu_x1 + view_wview[0] - (menu_padding * 2));
var menu_y2 = round(menu_y1 + view_hview[0] - (menu_padding * 2));
draw_set_colour(c_blue);
draw_set_alpha(0.1);
draw_rectangle(menu_x1, menu_y1, menu_x2, menu_y2, false);
draw_set_alpha(1); // reset alpha

// draw menu background border
draw_set_colour(c_blue);
draw_rectangle(menu_x1, menu_y1, menu_x2, menu_y2, true);

// draw items in object array
var object_text = '';
var item_id = 0;
var item_padding = 10;
var item_x = (menu_x1 + 10);
var item_y = (menu_y1 + 10);
var item_width = 0;
var item_height = 0;
var item_subimg = 0;
var row_height = 0;

var i, sprite;
for (i = 0; i < array_height_2d(object_array); i++)
{
    item_id = object_array[i, 0];
    sprite = object_array[i, 1];
    if (sprite != noone)
    {
        // get the size of the item's sprite
        item_width = sprite_get_width(sprite);
        item_height = sprite_get_height(sprite);
        if (item_height > row_height)
        {
            row_height = item_height;
        }
        
        // if the item won't fit on this line
        if ((item_x + item_width) > menu_x2)
        {
            item_x = (menu_x1 + 10);
            item_y = (item_y + row_height + item_padding);
        }
        
        // if item is selected
        item_subimg = 0;
        if (i == object_array_position)
        {
            // get item name
            object_text = object_array[i, 2];
            
            // update image sprite index
            item_subimg = 1;
        }
        
        // if close object
        if (item_id == 'close')
        {
            var temp_x = (menu_x2 - item_width - item_padding);
            var temp_y = (menu_y2 - item_height - item_padding);
            
            // draw the item's sprite
            draw_sprite(sprite, item_subimg, temp_x, temp_y);
        }
        else
        {
            // draw the item's sprite
            draw_sprite(sprite, item_subimg, item_x, item_y);
            
            // update the x/y positioning
            item_x += (item_width + item_padding);
        }
    }
}

// draw selected item's text
var pos_x = (menu_x1 + ((menu_x2 - menu_x1) / 2));
var pos_y = (menu_y2 - item_padding);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_font(fnt_silkscreen_game);
draw_text(pos_x, pos_y, object_text);


