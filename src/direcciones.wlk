import wollok.game.*
import shove.*

object derecha {
	method esIgual(direccion) = direccion == self
	method contrario() = izquierda
}
object izquierda { 
	method esIgual(direccion) = direccion == self
	method contrario() = derecha
} 
object arriba {
	method esIgual(direccion) = direccion == self
	method contrario() = abajo
}
object abajo {
	method esIgual(direccion) = direccion == self
	method contrario() = arriba
}
