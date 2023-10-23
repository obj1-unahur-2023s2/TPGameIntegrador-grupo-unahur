import wollok.game.*
import shove.*

class Obstaculo{
	var property image
	var property position
	method serEmpujado(){}
}

class Ladrillo inherits Obstaculo(image="Ladrillo.png"){}

class Caja inherits Obstaculo(image="caja sin pintar.png"){ 
    var estaEnObjetivo = false
	override method serEmpujado(){
		if (shove.direccionActual() == "derecha") { position = position.right(1) }
		else if (shove.direccionActual() == "izquierda") { position = position.left(1) }
		else if (shove.direccionActual() == "abajo")  { position = position.down(1) }
		else { position = position.up(1) }	
	}	
	method llegarAObjetivo() { 
		game.onCollideDo(self, {obje => obje.completado() self.image()
	                        
	})
    
} 
     	 
    	
    override method image() = if (estaEnObjetivo) {"caja pintada.png"} else {"caja sin pintar.png"} 	
    method iniciar() {
    	self.llegarAObjetivo()
    }
}


class Objetivo {
	
	var property image = "objetivo (punto).png"
	var property position  
	method completado() {}
	method serEmpujado(){}
	
    		
   
}

