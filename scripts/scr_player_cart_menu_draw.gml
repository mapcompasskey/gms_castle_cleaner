///scr_player_cart_menu_draw()

/**
 * Player Cart Menu Controller: On Draw
 *
 * Added to the player cart menu object's Draw event.
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
var pos_y1 = round(view_yview[0] + TILE_SIZE);
var pos_x2 = round(pos_x1 + view_wview[0] - TILE_SIZE - TILE_SIZE);
var pos_y2 = round(pos_y1 + view_hview[0] - TILE_SIZE - TILE_SIZE);
draw_set_colour(c_blue);
draw_set_alpha(0.1);
draw_rectangle(pos_x1, pos_y1, pos_x2, pos_y2, false);
draw_set_alpha(1); // reset alpha

// draw menu background border
draw_set_colour(c_blue);
draw_rectangle(pos_x1, pos_y1, pos_x2, pos_y2, true);

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
        
        /*
        // set alpha transparency of sprite
        alpha = 1;
        if (object_array[i, 0] == 'broom')
        {
            if ( ! PLAYER_BROOM_IS_BROKEN)
            {
                alpha = 0.5;
            }
        }
        */
        
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

