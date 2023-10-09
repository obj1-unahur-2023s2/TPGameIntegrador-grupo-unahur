import wollok.game.*

object shove {
	var property position = game.center()
	var property image = "derecha sin empujar caja.png"
	method moverDerecha(){ position = position.right(1)
		image="derecha sin empujar caja.png"
	}
	method moverIzquierda(){ position = position.left(1)
		image="izquierda sin empujar caja.png"
	}
	method moverArriba(){ position = position.up(1) 
		image="arriba sin empujar caja.png"
	}
	method moverAbajo(){ position = position.down(1) 
		image="abajo sin empujar caja.png"
	}
	method configurarTeclas(){
		keyboard.left().onPressDo{self.moverIzquierda()}
		keyboard.right().onPressDo{self.moverDerecha()}
		keyboard.up().onPressDo{self.moverArriba()}
		keyboard.down().onPressDo{self.moverAbajo()}
	}
	method empujarCaja(){
		if (image=="derecha sin empujar caja.png")
			image = "derecha empujando caja.png"
		else if(image=="izquierda sin empujar caja.png")
			image = "izquierda empujando caja.png"
		else if(image=="arriba sin empujar caja.png")
			image = "arriba empujando caja.png"	
		else 
			image="abajo empujando caja.png"	
				
	}
}

