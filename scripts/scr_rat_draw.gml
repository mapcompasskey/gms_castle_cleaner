///scr_rat_draw()

/**
 * Rat: On Draw
 *
 * Added to the rat object's Draw event.
 */

//draw_self();

if (recovering && is_flashing)
{
    /**/
    draw_set_blend_mode_ext(bm_inv_dest_colour, bm_zero);
    draw_rectangle_colour(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, c_white,c_white,c_white,c_white,false);
    draw_set_blend_mode(bm_normal);
    draw_self();
    
    draw_set_blend_mode_ext(bm_inv_dest_colour, bm_zero);
    draw_rectangle_colour(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, c_white,c_white,c_white,c_white,false);
    draw_set_blend_mode(bm_normal);
    /**/
    
    /*
    draw_set_blend_mode_ext(bm_inv_src_color, bm_inv_dest_color);
    draw_self();
    draw_set_blend_mode(bm_normal);
    */
    /*
    draw_self();
    draw_set_blend_mode_ext(bm_inv_dest_color,bm_inv_src_color);
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
    draw_rectangle_color(x,y,x+sprite_width,y+sprite_height,c_white,c_white,c_white,c_white,0);
    draw_set_blend_mode(bm_normal);
    */
    
    /*
    draw_set_blend_mode_ext(bm_inv_dest_colour, bm_zero);
    draw_rectangle_colour(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, c_white,c_white,c_white,c_white,false);
    //draw_rectangle_colour(x, y, x+sprite_width, y+sprite_height, c_white,c_white,c_white,c_white,false);
    draw_set_blend_mode(bm_normal);
    draw_self();
    */
    
    //draw_set_blend_mode_ext(bm_inv_dest_colour, bm_zero);
    //draw_rectangle_colour(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, c_white,c_white,c_white,c_white,false);
    //draw_rectangle_colour(x, y, x+sprite_width, y+sprite_height, c_white,c_white,c_white,c_white,false);
    //draw_set_blend_mode(bm_normal);
}
else
{
    draw_self();
}

/** /
d3d_set_fog(1,c_white,0,0)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
d3d_set_fog(0,0,0,0)
/**/
/*

*/
