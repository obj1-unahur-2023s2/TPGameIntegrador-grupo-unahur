import wollok.game.*
import objetos.*
import direcciones.*

object shove {
	var property position = game.center()
	var property image = "derecha sin empujar caja.png"
	var property direccionActual 
	method iniciar() {
		game.addVisual(self)
		self.configurarTeclas()
		self.empujarCaja()
	}
	method direccionActual() = direccionActual
	method moverDerecha(){ position = position.right(1)
		image="derecha sin empujar caja.png"
		direccionActual = derecha
	}
	method moverIzquierda(){ position = position.left(1)
		image="izquierda sin empujar caja.png"
		direccionActual = izquierda
	}
	method moverArriba(){ position = position.up(1) 
		image="arriba sin empujar caja.png"
		direccionActual = arriba
	}
	method moverAbajo(){ position = position.down(1) 
		image="abajo sin empujar caja.png"
		direccionActual = abajo
	}
	method configurarTeclas(){
		keyboard.left().onPressDo{self.moverIzquierda()}
		keyboard.right().onPressDo{self.moverDerecha()}
		keyboard.up().onPressDo{self.moverArriba()}
		keyboard.down().onPressDo{self.moverAbajo()}
	}
	method direccionEmpujando(){
		if (direccionActual.esIgual(derecha)) { image = "derecha empujando caja.png" }
		else if (direccionActual.esIgual(izquierda)) { image = "izquierda empujando caja.png" }
		else if(direccionActual.esIgual(arriba)) { image = "arriba empujando caja.png" }
		else { image = "abajo empujando caja.png" }				
	}
	method shoveRebotar() { 
		if (direccionActual.esIgual(derecha)) { position = position.left(1) }
		else if (direccionActual.esIgual(izquierda)) { position = position.right(1) }
		else if (direccionActual.esIgual(arriba)) { position = position.down(1) }
		else { position = position.up(1) } 
	}          
	method empujarCaja() { game.onCollideDo(self, {el => el.serEmpujado() self.direccionEmpujando() }) }
	method despintarCaja(){}
	method pintarCaja(){}
	method rebotar(){}
}

