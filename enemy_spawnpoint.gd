extends StaticBody3D

@export var Enemy : PackedScene

func spawn():
	print('spawn')	
	if(Enemy):
		var new_enemy = Enemy.instantiate()
		new_enemy.top_level  = true
		add_child(new_enemy)
		new_enemy.transform = $enemy_spawnpoint.global_transform
		print('novo inimigo')
