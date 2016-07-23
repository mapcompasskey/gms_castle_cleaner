///scr_player_cart_menu_draw()

/**
 * Player Cart Menu Controller: On Draw
 *
 * Added to the player cart menu object's Draw event.
 */

// draw the snapshot
if (surface_exists(snapshot_surface))
{
    draw_surface(snapshot_surface, view_xview[0], view_yview[0]);
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
var pos_x1 = (view_xview[0] + TILE_SIZE);
var pos_y1 = (view_yview[0] + TILE_SIZE);
var pos_x2 = (pos_x1 + view_wview[0] - TILE_SIZE - TILE_SIZE);
var pos_y2 = (pos_y1 + view_hview[0] - TILE_SIZE - TILE_SIZE);
draw_set_colour(c_blue);
draw_set_alpha(0.1);
draw_rectangle(pos_x1, pos_y1, pos_x2, pos_y2, false);
draw_set_alpha(1); // reset alpha

// draw menu background border
draw_set_colour(c_blue);
draw_rectangle(pos_x1, pos_y1, pos_x2, pos_y2, true);

// draw items in object array
var object_text = '';
var pos_x = ((view_xview[0] + TILE_SIZE) + 10);
var pos_y = ((view_yview[0] + TILE_SIZE) + 10);

var i, sprite;
for (i = 0; i < array_height_2d(object_array); i++)
{
    sprite = object_array[i, 1];
    if (sprite)
    {
        // if item is selected
        if (i == object_array_position)
        {
            // get item name
            object_text = object_array[i, 0];
            
            // draw border around sprite
            var pos_x1 = (pos_x - 1);
            var pos_y1 = (pos_y - 1);
            var pos_x2 = (pos_x + sprite_get_width(sprite) + 1);
            var pos_y2 = (pos_y + sprite_get_height(sprite) + 1);
            draw_set_colour(c_white);
            draw_rectangle(pos_x1, pos_y1, pos_x2, pos_y2, true);
        }
        
        // draw the sprite
        draw_sprite(sprite, 0, pos_x, pos_y);
        
        // update the x/y positioning
        pos_x += (sprite_get_width(sprite) + 10);
        pos_y = 0;
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

