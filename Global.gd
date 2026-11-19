extends Node

var fragmentos = 0
var vida = 3

func sumar_fragmentos():
	fragmentos = fragmentos + 1

func quitar_vida():
	vida = vida - 1
	
	if vida == 0:
		game_over()
		
func reiniciar_contador():
	vida = 3
	fragmentos = 0
	
func reiniciar():
	get_tree().change_scene_to_file("res://escenas/Niveles/nivel_1.tscn")
	
	
func game_over():
	get_tree().change_scene_to_file("res://escenas/Game over/Game_over.tscn")
	reiniciar_contador()
