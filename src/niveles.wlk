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
		self.agregarLadrillos()
		self.agregarObjetivos()
		shove.iniciar()
		self.agregarCajas()
   }
		
		
	}

object nivelDos{
	const ladrillos = []
	const cajas = []
	const objetivos = []
	
	method agregarFilaDeLadrillos(desde, hasta , y){ (desde..hasta).forEach({x => ladrillos.add(new Ladrillo(position = game.at(x,y)))}) }
	method agregarColumnaDeLadrillos(desde, hasta , x) { (desde..hasta).forEach({y => ladrillos.add(new Ladrillo(position = game.at(x,y)))}) }
	
	method agregarLadrillos() {
		self.agregarFilaDeLadrillos(3, 10, 4)
		self.agregarFilaDeLadrillos(5, 7, 9)
		self.agregarFilaDeLadrillos(10, 13, 10)
		self.agregarFilaDeLadrillos(0, 1, 8)
		self.agregarFilaDeLadrillos(1, 13, 1)
		self.agregarFilaDeLadrillos(3, 9, 11)
		self.agregarFilaDeLadrillos(1, 10, 14)
		self.agregarColumnaDeLadrillos(9, 13, 0)
		self.agregarColumnaDeLadrillos(5, 7, 6)
		self.agregarColumnaDeLadrillos(5, 5, 3)
		self.agregarColumnaDeLadrillos(5, 8, 2)
		self.agregarColumnaDeLadrillos(4, 6,11)
		self.agregarColumnaDeLadrillos(6, 7,12)
		self.agregarColumnaDeLadrillos(1, 9,14)
		self.agregarColumnaDeLadrillos(11, 13,11)
		self.agregarColumnaDeLadrillos(2, 4, 1)
		ladrillos.forEach({l => l.iniciar()})
	}
	
	method agregarCajas(){
		cajas.add (new Caja(position= game.at(6,8)))
		cajas.add (new Caja(position= game.at(9,6)))
		cajas.add (new Caja(position= game.at(9,8)))
		cajas.add (new Caja(position= game.at(10,7)))
		cajas.add (new Caja(position= game.at(4,9)))
		cajas.add (new Caja(position= game.at(7,10)))
		cajas.forEach({x=>x.iniciar()})	
	}
	method agregarObjetivos(){
		objetivos.add(new Objetivo(position =game.at (4,5)))
		objetivos.add(new Objetivo(position =game.at (3,6)))
		objetivos.add(new Objetivo(position =game.at (10,11)))
		objetivos.add(new Objetivo(position =game.at (2,4)))
		objetivos.add(new Objetivo(position =game.at (12,5)))
		objetivos.add(new Objetivo(position =game.at (9,10)))
		objetivos.forEach{x=>x.iniciar()}
	}
	
	method iniciar(){
		shove.iniciar()
		self.agregarLadrillos()
		self.agregarObjetivos()
		self.agregarCajas()
   }
		
		
	}
	
	
	
	
