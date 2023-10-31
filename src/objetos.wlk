import wollok.game.*
import shove.*

class Obstaculo{
	var property image
	var property position
	method serEmpujado(){}
}

class Ladrillo inherits Obstaculo(image="Ladrillo.png"){}

class Caja inherits Obstaculo(image="caja sin pintar.png"){ 
	override method serEmpujado(){
		if (shove.direccionActual() == "derecha") { position = position.right(1) }
		else if (shove.direccionActual() == "izquierda") { position = position.left(1) }
		else if (shove.direccionActual() == "abajo")  { position = position.down(1) }
		else { position = position.up(1) }	
	}	
	method pintarCaja() { self.image("caja pintada.png") }
	method despintarCaja() { self.image("caja sin pintar.png") }                                         
}


class Objetivo {
	var property image = "objetivo (punto).png"
	var property position  
	method cambiarColorDeCaja() { game.onCollideDo(self, {c => c.pintarCaja() }) }
	method serEmpujado(){}
	method iniciar() { self.cambiarColorDeCaja() }
}

class Invisible {
	var property position
	method cambiarColorDeCaja() { game.onCollideDo(self, {c => c.despintarCaja()}) }
	method serEmpujado(){}
	method iniciar() { self.cambiarColorDeCaja() }
}