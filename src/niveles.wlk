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
		self.agregarColumnaDeLadrillos(1, 14,0)
		self.agregarColumnaDeLadrillos(3, 10, 13)
		self.agregarColumnaDeLadrillos(11, 13,10)
		self.agregarColumnaDeLadrillos(2, 3,12)
		self.agregarColumnaDeLadrillos(10, 14,14)
		self.agregarColumnaDeLadrillos(6, 8,4)
		self.agregarFilaDeLadrillos(1, 9, 4)
		self.agregarFilaDeLadrillos(4, 10, 10)
		self.agregarFilaDeLadrillos(1, 12, 1)
		self.agregarFilaDeLadrillos(1,13,14)
		ladrillos.forEach({l => l.iniciar()})
	}
	
	method agregarCajas(){
		cajas.add (new Caja(position= game.at(8,7)))
		cajas.add (new Caja(position= game.at(9,7)))
		cajas.add (new Caja(position= game.at(10,7)))
		cajas.add (new Caja(position= game.at(11,7)))
		cajas.forEach({x=>x.iniciar()})	
	}
	method agregarObjetivos(){
		objetivos.add(new Objetivo(position =game.at (12,12)))
		objetivos.add(new Objetivo(position =game.at (8,12)))
		objetivos.add(new Objetivo(position =game.at (3,7)))
		objetivos.add(new Objetivo(position =game.at (1,2)))
		objetivos.forEach{x=>x.iniciar()}
	}
	
	method iniciar(){
		shove.iniciar()
		self.agregarLadrillos()
		self.agregarObjetivos()
		self.agregarCajas()
   }
		
		
	}
	
	
	
