import shove.*
import objetos.*
import wollok.game.*
import niveles.*

object juego {
	method configurar(){
		game.title("Juego Base")
		game.width(15)
	    game.height(15)
	    
	    nivelUno.iniciar()
		
		game.start()
	}
}


