import Flota.*
import Pedidos.*

class Dependencia {
	var property rodados = []
	var property pedidos = []
	var property empleados = 0
	
	method cuantosEmpleados() { return empleados }
	method agregarAFlota(unRodado) { rodados.add(unRodado) }
	method quitarDeFlota(unRodado) { rodados.remove(unRodado) }
	method pesoTotalFlota() { return rodados.all({ r => r.peso().sum() })}
	method estaBienEquipado() { return rodados.all() > 3 and rodados.all({ r => r.velocidadMaxima() > 100 }) } 
	method capacidadTotalEnColor() { return rodados.sum({ r => r.capacidad()}).color() } //?
	method colorDelRodadoMasRapido() { rodados.max({ r => r.velocidadMaxima()}).color()} //?
	method capacidadFaltante() { return empleados - rodados.sum({ r => r.capacidad() })}
	method esGrande() { return empleados > 40 and rodados.size() > 5 }
	
	method pedidosRegistrados(unPedido) { pedidos.add(unPedido) }
	method totalPasajeros() { pedidos.sum({ p => p.pedidosRegistrados().capacidad()}) }
	method registrosNoSatisfechos() { rodados.filter({ p => p.pedidosRegistrados() and not p.puedeSatisfacer() }) }
	method relajar() { pedidos.all({ p => p.velocidadMaxima() + 1 }) }
}
