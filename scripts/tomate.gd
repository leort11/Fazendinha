extends Area2D
var sementes = 1

# Called when the node enters the scene tree for the first time.
func _ready():	
	hide()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$"../HUD/semente_tomate".text = str("Sementes de tomate = ", sementes)


func _on_body_entered(body):
	if sementes >= 1:
		sementes -= 1
		show()
		$AnimatedSprite2D.frame = 0
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 1
		await get_tree().create_timer(5.0).timeout
		$AnimatedSprite2D.frame = 2
		await get_tree().create_timer(7.0).timeout
		$AnimatedSprite2D.frame = 3
		await get_tree().create_timer(10.0).timeout
		$AnimatedSprite2D.frame = 4
