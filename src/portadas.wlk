import wollok.game.*
import niveles.*


object inicio {
	method image() = "menu principal.png"
	method position()= game.origin()
	method configurarTeclaInicio(){keyboard.enter().onPressDo{ if (game.hasVisual(self)) {
		game.removeVisual(self)
		nivelUno.iniciar()
		
		}
	}}
	method soundtrack(){
	const rain = game.sound("soundtrack shove It.mp3")
	rain.shouldLoop(true)
	keyboard.k().onPressDo({rain.pause()})
	keyboard.j().onPressDo({rain.resume()})
	keyboard.m().onPressDo({rain.stop()})
	game.schedule(500, {rain.play()})
	}
	
	
	method iniciar(){ 
		game.addVisual(self)	
		self.configurarTeclaInicio()
		self.soundtrack()
	}
	
}

object menuPausa {
	
	method image() = "menuPausa.png"
	
	method position()= game.at(5,8)

	method configurarTecla(){
		keyboard.p().onPressDo{
			if (not game.hasVisual(self)) {
				game.addVisual(self)
			    self.quitarConTiempo()
			}
		}
	}
	method quitar() {
		game.removeVisual(self)
	
	}
	method quitarConTiempo(){
		game.schedule(5000,{self.quitar()})}
		
	method iniciar(){
		self.image()
		self.position()
		self.configurarTecla()
	}	
}

object imagenNivelCompleto{
		var property image="nivelCompleto.jpg"
		method position(){return game.at(0,0)}
		method agregarImagen(){game.addVisual(self)}
		method quitarConTiempo(){game.schedule(4000,{game.removeVisual(self)})}
}



object informacionDeAyuda{
	method text() = "Press P to help"
	method position() = game.at(13,13)
	method textColor()= paleta.blanco() 
}
	
object paleta{const property blanco = "#FFFFFF" }
		
object pantallaFinal { 
	method image() = "finalizado.png"
	method position() = game.origin()
}		