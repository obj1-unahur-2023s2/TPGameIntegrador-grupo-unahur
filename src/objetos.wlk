import wollok.game.*
import shove.*
import direcciones.*

class Objeto{
	var property position
	method serEmpujado(){}
}

class Ladrillo inherits Objeto { method image() = "Ladrillo.png" }

class Caja inherits Objeto {
	var property image = "caja sin pintar.png" 
	override method serEmpujado(){
		if (shove.direccionActual().esIgual(derecha)) { position = position.right(1) }
		else if (shove.direccionActual().esIgual(izquierda)) { position = position.left(1) }
		else if (shove.direccionActual().esIgual(abajo))  { position = position.down(1) }
		else { position = position.up(1) }	
	}	
	method pintarCaja() { self.image("caja pintada.png") }
	method despintarCaja() { self.image("caja sin pintar.png") }                    
}


class Objetivo inherits Objeto {
	var property image = "objetivo (punto).png"
	method cambiarColorDeCaja() { game.onCollideDo(self, {c => c.pintarCaja() }) }
	method aniadirInvisibles() { 
		const invisibles = []
		if (game.getObjectsIn(position.left(1)).size() == 0) { invisibles.add(new Invisible(position = position.left(1))) }
		if (game.getObjectsIn(position.right(1)).size() == 0) { invisibles.add(new Invisible(position = position.right(1))) }
		if (game.getObjectsIn(position.up(1)).size() == 0) { invisibles.add(new Invisible(position = position.up(1))) }
		if (game.getObjectsIn(position.down(1)).size() == 0) { invisibles.add(new Invisible(position = position.down(1)))}
		invisibles.forEach({i => game.addVisual(i)})
		invisibles.forEach({i => i.iniciar()})
	}       
	method iniciar() { 
		self.aniadirInvisibles()
		self.cambiarColorDeCaja()
	}
}

class Invisible inherits Objeto {
	method cambiarColorDeCaja() { game.onCollideDo(self, {c => c.despintarCaja()}) }
	method iniciar() { self.cambiarColorDeCaja() }
}