import wollok.game.*
import shove.*

class Obstaculo{
	var property image
	var property position
}

class Ladrillo inherits Obstaculo(image="Ladrillo.png"){}

class Caja inherits Obstaculo(image="caja sin pintar.png"){ 
	method serEmpujado(){
		if (shove.direccionActual() == "derecha") { position = position.right(1) }
		else if (shove.direccionActual() == "izquierda") { position = position.left(1) }
		else if (shove.direccionActual() == "abajo")  { position = position.down(1) }
		else { position = position.up(1) }	
	}
}

class Objectivo {
	var property image = "objetivo (punto).png"
	var property position 
}