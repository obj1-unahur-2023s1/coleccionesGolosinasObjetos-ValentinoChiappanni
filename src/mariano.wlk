import golosinas.*
import gustos.*
object mariano {
	const golosinas = [] 
	method comprar(golosina){
		golosinas.add(golosina)
	}
	method desechar(golosina){
		golosinas.remove(golosina)
	}
	method cantidadGolosinas(){
		return golosinas.size()
	}
	method tieneLaGolosina(unaGolosina){
		return golosinas.contains(unaGolosina)
	}
	method probarGolosinas(){
		golosinas.forEach({golosina => golosina.recibirMordisco()})
	}
	method hayGolosinaSinTACC(){
		return golosinas.any({golosina => golosina.esLibreDeGluten()})
	}
	method preciosCuidados(){
		return golosinas.all({golosina => golosina.precio() <= 10})
	}
	method golosinaDeSabor(unSabor){
		return golosinas.find({golosina => golosina.sabor() == unSabor})
	}
	method golosinasDeSabor(unSabor){
		return golosinas.filter({golosina => golosina.sabor() == unSabor})
	}
	method sabores(){
		return golosinas.map({ golosina => golosina.sabor()}).asSet()
	}
	method golosinaMasCara(){
		return golosinas.max({golosina => golosina.precio()})
	}
	method pesoGolosinas(){
		return golosinas.sum({golosina => golosina.gramos()})
	}
	method golosinasFaltantes(golosinasDeseada){
		const golosinasDeseadas = golosinasDeseada.asSet()
		return golosinasDeseadas.difference(golosinas.asSet())
	}
	method gustosFaltantes(gustosDeseados){
		
	}
}
