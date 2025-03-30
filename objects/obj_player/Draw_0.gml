draw_self()

draw_text(x,y,"vida: "+ string(hp))
draw_text(room_width/2-100,room_height-50,"xp: "+ string(level_timer))
draw_text(room_width/2,room_height-50,"xp pra upar: "+ string(level_to_up))

if estado_morto = 1
{
draw_text_transformed(room_width/2-200,room_height/2-100,"MORREU",12,12,0)
}