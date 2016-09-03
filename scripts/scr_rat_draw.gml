///scr_rat_draw()

/**
 * Rat: On Draw
 *
 * Added to the rat object's Draw event.
 */

/*
var border_color = c_white;
if (recovering)
{
    border_color = c_red;
}

// draw border sprite
switch (sprite_index)
{
    case walking_sprite:
        draw_sprite_ext(spr_rat_walking_border, image_index, x, y, image_xscale, 1, 0, border_color, 1);
        break;
    
    case idle_sprite:
        draw_sprite_ext(spr_rat_idle_border, image_index, x, y, image_xscale, 1, 0, border_color, 1);
        break;
}

draw_self();
*/

/**/
var border_color = c_white;
if (recovering)
{
    border_color = c_red;
}

d3d_set_fog(1, border_color, 0, 0);
draw_sprite_ext(sprite_index, image_index, x - 1, y, image_xscale, image_yscale, 0, c_white, 1);
draw_sprite_ext(sprite_index, image_index, x + 1, y, image_xscale, image_yscale, 0, c_white, 1);
draw_sprite_ext(sprite_index, image_index, x, y - 1, image_xscale, image_yscale, 0, c_white, 1);
draw_sprite_ext(sprite_index, image_index, x, y + 1, image_xscale, image_yscale, 0, c_white, 1);
d3d_set_fog(0, 0, 0, 0);

draw_self();
/**/

/*
draw_self();
draw_set_blend_mode(bm_add);
draw_self();
draw_set_blend_mode(bm_normal);
*/


/*
if (recovering && is_flashing)
{
    /** /
    draw_set_blend_mode_ext(bm_inv_dest_colour, bm_zero);
    draw_rectangle_colour(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, c_white,c_white,c_white,c_white,false);
    draw_set_blend_mode(bm_normal);
    draw_self();
    
    draw_set_blend_mode_ext(bm_inv_dest_colour, bm_zero);
    draw_rectangle_colour(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, c_white,c_white,c_white,c_white,false);
    draw_set_blend_mode(bm_normal);
    /** /
    
    /*
    draw_set_blend_mode_ext(bm_inv_src_color, bm_inv_dest_color);
    draw_self();
    draw_set_blend_mode(bm_normal);
    * /
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
    * /
    
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

