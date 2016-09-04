///scr_draw_border(color)

/**
 * Draw a Border
 *
 * Draw a one pixel border by duplicating the current object's sprite.
 * d3d_set_fog will recolor the sprite with a solid color.
 */

d3d_set_fog(1, argument0, 0, 0);

draw_sprite_ext(sprite_index, image_index, x - 1, y, image_xscale, image_yscale, 0, c_white, 1);
draw_sprite_ext(sprite_index, image_index, x + 1, y, image_xscale, image_yscale, 0, c_white, 1);
draw_sprite_ext(sprite_index, image_index, x, y - 1, image_xscale, image_yscale, 0, c_white, 1);
draw_sprite_ext(sprite_index, image_index, x, y + 1, image_xscale, image_yscale, 0, c_white, 1);

d3d_set_fog(0, 0, 0, 0);

