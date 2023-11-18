import wollok.game.*
import objetos.*
import direcciones.*

object shove {
	var property position = game.center()
	var property image = "derecha sin empujar caja.png"
	var property direccionActual = derecha
	var arrastroCaja = false
	var cajaAgarrada = null
		method iniciar() {
		game.addVisual(self)
		self.configurarTeclas()
		self.empujarCaja()
	}
	method moverDerecha(){ 
		if (not (self.hayLadrilloHacia(position.right(1)))) {
			position = position.right(1)
		    image ="derecha sin empujar caja.png"
		    direccionActual = derecha
		}
	}
	method moverIzquierda(){ 
		if (not (self.hayLadrilloHacia(position.left(1)) )) {
			position = position.left(1)
			image="izquierda sin empujar caja.png"
		    direccionActual = izquierda    
        }
	}
	method moverArriba(){ 
		if (not (self.hayLadrilloHacia(position.up(1)))) {
		   position = position.up(1) 
		   image="arriba sin empujar caja.png"
		   direccionActual = arriba
	    }
	}
	method moverAbajo(){ 
		if (not (self.hayLadrilloHacia(position.down(1)))) {
			position = position.down(1) 
		    image="abajo sin empujar caja.png"
		    direccionActual = abajo
	    }
	}
	method hayLadrilloHacia(direccion) = game.getObjectsIn(direccion).any({x => x.image() == "Ladrillo.png"}) 
	method hayCajaHacia(direccion) = game.getObjectsIn(direccion).any({x => x.direccionActual().esIgual(direccionActual)}) 
	method hayAlgoAtras() = self.hayCajaHacia(self.posicionAnterior()) or self.hayLadrilloHacia(self.posicionAnterior())
	method configurarTeclas(){
		keyboard.left().onPressDo{self.moverIzquierda()}
		keyboard.right().onPressDo{self.moverDerecha()}
		keyboard.up().onPressDo{self.moverArriba()}
		keyboard.down().onPressDo{self.moverAbajo()}
		keyboard.s().onPressDo{self.arrastrarCaja()}
	}
	method direccionEmpujando(){
		if (direccionActual.esIgual(derecha)) { image = "derecha empujando caja.png"}
		else if (direccionActual.esIgual(izquierda)) { image = "izquierda empujando caja.png" }
		else if(direccionActual.esIgual(arriba)) { image = "arriba empujando caja.png" }
		else { image = "abajo empujando caja.png" }				
	}
	method shoveRebotar() { 
		if (not(self.hayAlgoAtras())) { position = self.posicionAnterior() }
	}          
	method posicionAnterior() = direccionActual.posAnterior(position)
	method posicionSiguiente() = direccionActual.posSiguiente(position)
	method empujarCaja() { 
		game.onCollideDo(self, {el => 
			if(el.image() == "caja sin pintar.png" or el.image() == "caja pintada.png"){
			el.direccionActual(direccionActual) self.direccionEmpujando() el.noSePuedenMover() arrastroCaja = false }}) 
    }
    method arrastrarCaja() {
    	if (not arrastroCaja){
    		if (game.getObjectsIn(self.posicionSiguiente()).any({c => c.direccionActual().esIgual(direccionActual)})){
    			cajaAgarrada = game.getObjectsIn(self.posicionSiguiente()).find({c => c.direccionActual().esIgual(direccionActual)})
    		    self.shoveRebotar()
    		    cajaAgarrada.rebotar()
    		    arrastroCaja = true
    		}
    	}
    }
	method despintarCaja(){}
	method pintarCaja(){}
	method rebotar(){}
}

