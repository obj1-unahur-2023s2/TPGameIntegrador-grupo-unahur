import wollok.game.*
import niveles.*


object inicio {
	method image()= "menu principal.png"
	method position()= game.center()
	method configurarTeclaInicio(){keyboard.enter().onPressDo{game.removeVisual(self)
									nivelUno.iniciar()
									
	}}
	
	method iniciar(){
		self.image()
		self.position()
		self.configurarTeclaInicio()
	}
	
}