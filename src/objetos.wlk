import wollok.game.*
import shove.*
import direcciones.*

class Objeto{
	var property position
	method serEmpujado(){}
	method iniciar(){ game.addVisual(self) }
}

class Ladrillo inherits Objeto { 
	method image() = "Ladrillo.png"
}

class Objetivo inherits Objeto {
	var property image =  "objetivo (punto).png"
	method cambiarColorDeCaja() { game.onCollideDo(self, {c => c.pintarCaja() }) }
	method pintarCaja(){}
	method aniadirInvisibles() { 
		const invisibles = []
		if (game.getObjectsIn(position.left(1)).size() == 0) { invisibles.add(new Invisible(position = position.left(1))) }
		if (game.getObjectsIn(position.right(1)).size() == 0) { invisibles.add(new Invisible(position = position.right(1))) }
		if (game.getObjectsIn(position.up(1)).size() == 0) { invisibles.add(new Invisible(position = position.up(1))) }
		if (game.getObjectsIn(position.down(1)).size() == 0) { invisibles.add(new Invisible(position = position.down(1)))}
		invisibles.forEach({i => i.iniciar()})
	}       
    override method iniciar() { 
    	super()
		self.aniadirInvisibles()
		self.cambiarColorDeCaja()
	}
}

class Invisible inherits Objeto {
	method cambiarColorDeCaja() { game.onCollideDo(self, {c => c.despintarCaja()}) }
	method image() = "fondo.png"
    override method iniciar() { 
    	super()
    	self.cambiarColorDeCaja()
    }
}

class Caja inherits Objeto {
	var property image = "caja sin pintar.png" 
	var property direccionActual = shove.direccionActual()
		override method serEmpujado(){
		if (shove.direccionActual().esIgual(derecha) and not self.hayLadrilloHaciaCaja(position.right(1))) {
			position = position.right(1)
		}
		else if (shove.direccionActual().esIgual(izquierda) and not self.hayLadrilloHaciaCaja(position.left(1))) { 
			position = position.left(1)
		}
		else if (shove.direccionActual().esIgual(abajo) and not self.hayLadrilloHaciaCaja(position.down(1)))  { 
			position = position.down(1)
		}
		else if (shove.direccionActual().esIgual(arriba) and not self.hayLadrilloHaciaCaja(position.up(1))){
			position = position.up(1)
		}	
		else { shove.rebotar() }
		
	}	
	method hayLadrilloHaciaCaja(direccion) = game.getObjectsIn(direccion).any({l => l.image() == "Ladrillo.png"})
	method noSePuedenMover() { if (self.hayMuchasCajas() or self.hayLadrilloHaciaCaja(self.posicionSiguiente())) { shove.shoveRebotar() } else { self.serEmpujado() }}
	method hayMuchasCajas() = shove.direccionActual().esIgual(direccionActual) and game.getObjectsIn(self.posicionSiguiente()).any({el => el.image() == image})
	method posicionSiguiente() {
		if (direccionActual.esIgual(derecha)) { return position.right(1) }
		else if (direccionActual.esIgual(izquierda)) { return position.left(1) }
		else if (direccionActual.esIgual(arriba)) { return position.up(1) }
		else { return position.down(1) }
	}
	method posicionAnterior() {
		if (direccionActual.esIgual(derecha)) { return position.left(1) }
		else if (direccionActual.esIgual(izquierda)) { return position.right(1) }
		else if (direccionActual.esIgual(arriba)) { return position.down(1) }
		else { return position.up(1) } 
	}
	method pintarCaja() { self.image("caja pintada.png") }
	method despintarCaja() { self.image("caja sin pintar.png") }        
	method rebotar() { position = self.posicionAnterior() }     
}

object menuPausa {
	
	method image() =
		"menuPausa.png"
	
	method position()= game.at(5,8)

	method configurarTecla(){
		keyboard.p().onPressDo{
			game.addVisual(self)
			self.quitarConTiempo()
		}
	}
	method quitar() {
		game.removeVisual(self)
	
	}
	method quitarConTiempo(){
		game.schedule(5000,{self.quitar()})
			}


	
	method iniciar(){
		self.image()
		self.position()
		
		self.configurarTecla()

	}
	
}

		