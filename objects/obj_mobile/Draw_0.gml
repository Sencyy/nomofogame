draw_self()

if place_meeting(x, y, obj_player) {
    obj_player.SANIDADE += 200
    audio_play_sound(snd_notificacao, 1, false, 1, 1, 1)
    instance_destroy()
}