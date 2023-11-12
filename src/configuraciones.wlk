import shove.*
import objetos.*
import wollok.game.*
import niveles.*
import inicio.*

object juego {
	method configurar(){
		game.title("Juego Base")
		game.ground("fondo.png")
		game.width(15)
	    game.height(15)
	    inicio.iniciar()
	    menuPausa.iniciar()
		game.start()
	}
}


