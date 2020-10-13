import Flota.*
import Dependencia.*

class Pedidos {
	var property pedidos = []
	var property pasajeros
	var property distancia
	var property tiempoMaximo

	method cantPasajeros() { return pasajeros }
//  method coloresIncompatibles(color) { self.cantPasajeros() != color }
	method velocidadRequerida() { return self.distancia() / self.tiempoMaximo() }
	method puedeSatisfacer(auto) { return auto.velocidadMaxima() > 10 
		and self.cantPasajeros() == auto.capacidad() 
		// and self.coloresIncompatibles(color) == color 
	}
	method acelerar() { return self.tiempoMaximo() - 1 }
	method relajar() { return self.tiempoMaximo() + 1 }	
	
}
