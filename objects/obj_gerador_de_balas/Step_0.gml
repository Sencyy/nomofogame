x = player.x
y = player.y

if spawn_bala_mount > 0 
{
spawn_bala_mount_time_timer = max(spawn_bala_mount_time_timer-1,0)
	if spawn_bala_mount_time_timer = 0 
	{
	spawn_bala_mount_time_timer = spawn_bala_mount_time
	spawn_bala_mount -=1
	gerar_bala() 
	}
}
else
{
instance_destroy()
}

