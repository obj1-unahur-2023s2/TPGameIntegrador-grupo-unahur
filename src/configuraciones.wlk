import shove.*
import objetos.*
import wollok.game.*
import niveles.*
import portadas.*

object juego {
	method configurar(){
		game.title("Shove It!")
		game.ground("fondo.png")
		game.width(15)
	    game.height(15)
	    inicio.iniciar()
		menuPausa.iniciar()
}

}


