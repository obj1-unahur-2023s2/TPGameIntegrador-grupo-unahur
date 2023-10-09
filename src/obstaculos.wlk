import wollok.game.*

class Obstaculo{
	var property image
	var property position
	
}

class Ladrillo inherits Obstaculo(image="Ladrillo.png"){
	
}

class Caja inherits Obstaculo(image="caja sin pintar.png", position = game.at(3,5)){

	method mover(pos){position=pos + 1}
}