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
		game.ground("fondo.png")
		const in1 = new Invisible(position = objetivo.position().left(1))
		const in2 = new Invisible(position = objetivo.position().right(1))
		const in3 = new Invisible(position = objetivo.position().up(1))
		const in4 = new Invisible(position = objetivo.position().down(1))
		game.addVisual(in1)
		game.addVisual(in2)
		game.addVisual(in3)
		game.addVisual(in4)
		objetivo.iniciar()
		in1.iniciar()
		in2.iniciar()
		in3.iniciar()
		in4.iniciar()
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


