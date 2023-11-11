import wollok.game.*

import shove.*
import objetos.*



object nivelUno{
	
	method agregarLadrillos(y){
		const ladrillos=[]
		(1..4).forEach{x=>ladrillos.add (new Ladrillo (position=game.at(x,y)))}
		ladrillos.forEach{x=>x.iniciar()}
		
	}

	method agregarCajas(){
		const  cajas = []
		
		cajas.add (new Caja(position= game.at(3,5)))
		cajas.add (new Caja(position= game.at(5,5)))
		cajas.add (new Caja(position= game.at(2,5)))
		cajas.forEach({x=>x.iniciar()})	
		
	}
	method agregarObjetivos(){
		const obj=[]
		
		obj.add(new Objetivo(position =game.at (2,2)))
		obj.add(new Objetivo(position =game.at (2,2)))
		obj.add(new Objetivo(position =game.at (2,2)))
		obj.forEach{x=>x.iniciar()}
		
	}
	method iniciarVisuales(){
		const caja= new Caja(position =game.at(3,3))
		game.addVisual(caja)
		game.ground("fondo.png")
	}

	
	method iniciar(){
		shove.iniciar()
	//	self.iniciarVisuales()
		//self.agregarLadrillos(3)
		self.agregarCajas()
		//self.agregarObjetivos()

		
	
	}
		
		
	}
	
	
	

