var spX = spxply
var spY = spyply

if player.x > camera_get_view_width(view_camera[0]) 
{
spX =0
}

if player.x < camera_get_view_width(view_camera[0])/2
{
spX =0
}

if player.y < camera_get_view_height(view_camera[0])/2
{
spY = 0
}

if player.y > camera_get_view_height(view_camera[0])*2
{
spY = 0
}

if player.estado_level_up = 0
{
x += spX
y += spY
}