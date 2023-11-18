import wollok.game.*
import shove.*

object derecha {
	method esIgual(direccion) = direccion == self
	method contrario() = izquierda 
	method posAnterior(pos) = pos.left(1) 
	method posSiguiente(pos) = pos.right(1)
}
object izquierda { 
	method esIgual(direccion) = direccion == self
	method contrario() = derecha
	method posAnterior(pos) = pos.right(1)
	method posSiguiente(pos) = pos.left(1)
} 
object arriba {
	method esIgual(direccion) = direccion == self
	method contrario() = abajo
	method posAnterior(pos) = pos.down(1)
	method posSiguiente(pos) = pos.up(1)
}
object abajo {
	method esIgual(direccion) = direccion == self
	method contrario() = arriba
	method posAnterior(pos) = pos.up(1)
	method posSiguiente(pos) = pos.down(1)
}
