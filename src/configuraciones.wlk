import shove.*
import objetos.*
import wollok.game.*

object juego {
	method configurar(){
		game.title("Juego Base")
		game.width(15)
	    game.height(15)
		shove.iniciar()
		game.addVisual(new Caja(position = game.at(3,5)))
		game.start()
	}
}

