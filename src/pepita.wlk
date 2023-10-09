import wollok.game.*

object pepita {
	var property position = game.center()
	method image() = "pepita.png"
	method moverDerecha(){ position = position.right(1) }
	method moverIzquierda(){ position = position.left(1) }
	method moverArriba(){ position = position.up(1) }
	method moverAbajo(){ position = position.down(1) }
	
	method configurarTeclas(){
		keyboard.left().onPressDo{self.moverIzquierda()}
		keyboard.right().onPressDo{self.moverDerecha()}
		keyboard.up().onPressDo{self.moverArriba()}
		keyboard.down().onPressDo{self.moverAbajo()}
	}
}

class Caja {
	var property position
	method mover(pos) { position = pos }
}