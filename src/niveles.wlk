import wollok.game.*

import shove.*
import objetos.*



object nivelUno{
	const ladrillos=[]
	
	method agregarFilaLadrillo(y){
		(1..4).forEach{x=>ladrillos.add (new Ladrillo (position=game.at(x,y)))
			}
	}
	method iniciarLadrillos(){
		ladrillos.forEach{x=>x.iniciar()}
	}
	method iniciar(){
		self.agregarFilaLadrillo(3)
		self.iniciarLadrillos()
	}
	}

