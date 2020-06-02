class Bici {
	var property rodado
	var property largo
	var property marca
	var property  accesorios= []
	
	method altura() { return rodado * 2.5 + 15}
	method velocidadCrucero() {return  if(largo > 120){rodado + 6} else {rodado + 2} }
	method carga() {return accesorios.sum({acc=>acc.carga()})  }
	method peso() { return rodado /2 + accesorios.sum({acc=>acc.peso()})}
	method tieneLuz() {return accesorios.any({acc => acc.esLuminoso()})}
	method cantidadDeAccesoriosLivianos() { return accesorios.count({acc=>acc.peso() < 1})}
	
}


object farolito {
	
	method peso() { return 0.5 }
	method carga() { return 0}
	method esLuminoso() { return true}
}

class Canasto {
	var property volumen
	method peso() {return volumen / 10 }
	method carga() {return volumen * 2}
	method esLuminoso() {return false}
	
}

class MorralDeBici {
	var property largoMorral
	var property tieneOjoDeGato
	
	method peso() { return 1.2 }
	method carga () {return largoMorral / 3}
	method esLuminoso() { return if(tieneOjoDeGato){ true} else { false}}	
}



