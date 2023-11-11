import wollok.game.*
import shove.*
import objetos.*

object nivelUno{
	const ladrillos = []
	const cajas = []
	const objetivos = []
	
	method agregarFilaDeLadrillos(desde, hasta , y){ (desde..hasta).forEach({x => ladrillos.add(new Ladrillo(position = game.at(x,y)))}) }
	method agregarColumnaDeLadrillos(desde, hasta , x) { (desde..hasta).forEach({y => ladrillos.add(new Ladrillo(position = game.at(x,y)))}) }
	
	method agregarLadrillos() {
		self.agregarColumnaDeLadrillos(4, 10, 1)
		self.agregarColumnaDeLadrillos(4, 10, 13)
		self.agregarFilaDeLadrillos(2, 12, 4)
		self.agregarFilaDeLadrillos(2, 12, 10)
		ladrillos.forEach({l => l.iniciar()})
	}
	
	method agregarCajas(){
		cajas.add (new Caja(position= game.at(3,9)))
		cajas.add (new Caja(position= game.at(11,9)))
		cajas.add (new Caja(position= game.at(3,5)))
		cajas.add (new Caja(position= game.at(11,5)))
		cajas.forEach({x=>x.iniciar()})	
	}
	method agregarObjetivos(){
		objetivos.add(new Objetivo(position =game.at (2,9)))
		objetivos.add(new Objetivo(position =game.at (2,5)))
		objetivos.add(new Objetivo(position =game.at (12,5)))
		objetivos.add(new Objetivo(position =game.at (12,9)))
		objetivos.forEach{x=>x.iniciar()}
	}
	
	method iniciar(){
		shove.iniciar()
		self.agregarLadrillos()
		self.agregarObjetivos()
		self.agregarCajas()
   }
		
		
	}
	
	
	

