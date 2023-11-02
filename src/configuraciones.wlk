import shove.*
import objetos.*
import wollok.game.*

object juego {
	method configurar(){
		game.title("Juego Base")
		game.width(15)
	    game.height(15)
		shove.iniciar()
		const caja1 = new Caja(position = game.at(3,5))
		const objetivo1 = new Objetivo(position = game.at(4,1))
		const ladrillo1 = new Ladrillo(position = game.at(2,5))
		game.addVisual(ladrillo1)
		game.addVisual(objetivo1)
		game.addVisual(caja1)
		ladrillo1.iniciar()
		objetivo1.iniciar()
		game.start()
	}
}

