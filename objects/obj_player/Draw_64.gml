
draw_text(window_get_width()/2-100,window_get_height()-50,"xp: "+ string(level_timer))
draw_text(window_get_width()/2,window_get_height()-50,"xp pra upar: "+ string(level_to_up))

if estado_morto = 1
{
draw_text_transformed(window_get_width()/2-200,window_get_height()/2-100,"MORREU",12,12,0)
}

insano()