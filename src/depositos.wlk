import bicis.*

class Deposito {
	var property bicicletas = [] 
	
	method coleccionDeBicisRapidas() {return bicicletas.filter({bic=>bic.velocidadCrucero() > 25})}
	
	method listaDeBicisPorMarca() {return bicicletas.map({bic =>bic.marca()})}
	
	method coleccionDeBicisPorMarca() { return self.listaDeBicisPorMarca().asSet()}
	method depositoNocturno() { return bicicletas.all({bic=>bic.tieneLuz()})}
	method puedeLlevarCargaMayorA(cuanto) { return bicicletas.any({bic=>bic.carga() > cuanto})}
	method tieneBiciParaLlevar(cuanto){ return self.puedeLlevarCargaMayorA(cuanto) and bicicletas.any({bic=>bic.carga() == cuanto})}
	method marcaDeLaBiciMasRapida() {return bicicletas.max({bic=>bic.velocidadCrucero()}).marca()}
	method bicisLargas() { return bicicletas.filter({bic=>bic.largo() > 170})}
	method cargaTotalBicisLargas() { return self.bicisLargas().sum({bic=>bic.carga()})}
	method cantidadDeBicisSinAccesorios() { return bicicletas.count({bic=>bic.accesorios().isEmpty()})}
	
	
	method bicisMismaMarca(bici) { return bicicletas.filter({bic=>bic.marca() == bici})}
	method largoPermitido() { }

		
	
}


