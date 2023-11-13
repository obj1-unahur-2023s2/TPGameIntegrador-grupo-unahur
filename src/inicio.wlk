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
	const rain = game.sound("soundtrack shove it.mp3")
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

