extends Area2D

var speed = 1000
var velocity = Vector2()

func start(pos, dir): # where the bullet starts
	position = pos
	rotation = dir 
	velocity = Vector2(speed, 0).rotated(dir)

func _process(delta): # update bullet's position
	position += velocity * delta

func _on_VisibilityNotifier2D_screen_exited(): # delete bullet when it exits the screen
	queue_free()

func _on_Bullet_body_entered(body): # when a bullet enters a rock, explode the rock
	if body.is_in_group('rocks'):
		body.explode()
		queue_free()
