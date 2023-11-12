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
<<<<<<< HEAD
	    menuPausa.iniciar()
		game.start()
=======
	    game.start()
>>>>>>> branch 'master' of https://github.com/obj1-unahur-2023s2/TPGameIntegrador-grupo-unahur.git
	}
}


