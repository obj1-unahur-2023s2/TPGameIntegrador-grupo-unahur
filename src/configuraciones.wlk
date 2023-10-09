import shove.*
import wollok.game.*

object configuracion{
	
	
	method teclas(){shove.configurarTeclas()
		game.onCollideDo(shove, {el => el.mover(shove.position())}
			
		)
		}
	}