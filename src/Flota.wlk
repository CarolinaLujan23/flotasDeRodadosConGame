class Corsa {
	var colorCorsa
	
	method capacidad() { return 4 }
	method velocidadMaxima() { return 150 }
	method peso() { return 1500 }
	method color() { return colorCorsa }
	method setColor(unColor) { colorCorsa = unColor }
}

class Renault {
	const tieneTanque = true
	
	method capacidad() {
		if (tieneTanque) {
			return 3
		} else {
			return 4 } }
	
	method velocidadMaxima() {
		if (tieneTanque) {
			return 120
		} else {
			return 110 } }
	method color() { return "azul"}
}

object trafic {
	var property peso = 0
	var property velocidad = 0
	
	method capacidad() {  
		const comodo = true
		
		if (comodo) {
			return 5
		} else {
			return 12	} }
	method peso() { return peso }
	method velocidadMaxima() { return velocidad }
	method color() { return "blanco"}
	method motores() {
		const pulenta = true
		
		if (pulenta) {
			return self.peso() == 800 and self.velocidadMaxima() == 130 
		} else {
			return self.peso() == 500 and self.velocidadMaxima() == 80	} }
}	

class Varios {
	method capacidad() { }
	method velocidadMaxima() {  }
	method peso() { }
	method color() {  }	
}