
draw_self()

draw_text(x,y,"vida: "+ string(hp))
image_xscale = 2
image_yscale = 2
draw_sprite_ext(spr_circuloseta, 0, x, y - 10, 1.5, 1.5, point_direction(x, y, mouse_x, mouse_y), c_white, 1)
//draw_text(x,y-62,y)
