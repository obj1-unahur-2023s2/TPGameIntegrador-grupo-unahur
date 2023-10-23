import shove.*
import objetos.*
import wollok.game.*

object juego {
	method configurar(){
		game.title("Juego Base")
		game.width(15)
	    game.height(15)
		shove.iniciar()
		const caja = new Caja(position = game.at(3,5))
		game.addVisual(caja)
		const objetivo = new Objetivo (position = game.at (4,1))
		game.addVisual(objetivo)
		caja.iniciar()
		game.start()
	}
}

