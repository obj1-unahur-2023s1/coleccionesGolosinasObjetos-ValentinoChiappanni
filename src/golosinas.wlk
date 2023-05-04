import gustos.*

object bombon {
	 var property gramos = 15
	
	method precio (){
		return 5
	}
	method sabor(){
		return frutilla
	}
	method esLibreDeGluten(){
		return true
	}
	method recibirMordisco (){
		gramos = (gramos * 0.8) - 1
	}
}
object alfajor {
	var property gramos = 300
	method precio (){
		return 12
	}
	method sabor(){
		return chocolate
	}
	method esLibreDeGluten(){
		return false
	}
	method recibirMordisco (){
		gramos = (gramos * 0.8)
	}
}

object caramelo{
	var property gramos = 5
	method precio (){
		return 1
	}
	method sabor(){
		return frutilla
	}
	method esLibreDeGluten(){
		return true
	}
	method recibirMordisco (){
		gramos = 0.max(gramos-1)
	}
}

object chupetin{
	var property gramos = 7
	method precio (){
		return 2
	}
	method sabor(){
		return naranja
	}
	method esLibreDeGluten(){
		return true
	}
	method recibirMordisco (){
		if (gramos > 2){
			gramos = gramos * 0.9
		}
	}
}

object oblea{
	var property gramos = 250
	method precio (){
		return 5
	}
	method sabor(){
		return vainilla
	}
	method esLibreDeGluten(){
		return false
	}
	method recibirMordisco(){
		if(gramos > 70){
			gramos = gramos * 0.5
		}
		else{
			gramos = gramos *0.75
		}
	}
}

object chocolatin{
	var property gramos
	method precio (){
		return gramos * 0.5
	}
	method sabor(){
		return chocolate
	}
	method esLibreDeGluten(){
		return false
	}
	method recibirMordisco (){
		gramos = 0.max(gramos-2)
	}
}

object golosinaBaniada{
	var property golosina
	var pesoBaniado = 4
	method precio (){
		return 2 + golosina.precio()
	}
	method gramos(){
		return pesoBaniado + golosina.gramos()
	}
	method sabor(){
		return golosina.sabor()
	}
	method esLibreDeGluten(){
		return golosina.esLibreDeGluten()
	}
	method recibirMordisco (){
		pesoBaniado -= 0.max(pesoBaniado-2)
		golosina.recibirMordisco()
	}
}

object pastillaTuttiFrutti{
	var property gramos = 5
	var property esLibreDeGluten
	var saborActual
	const sabores = [frutilla, chocolate, naranja]
	var cantMordicos = 0 
	method precio (){
		return if (esLibreDeGluten){7} else {10}
	}
	method sabor(){
		return saborActual
	}
	method esLibreDeGluten(){
		return false
	}
	method recibirMordisco (){
		saborActual = sabores.get(cantMordicos)
		cantMordicos++
		if (cantMordicos == 3){
			cantMordicos = 0
		}
	}
}