
object berghain {

	var patovaDeTurno
	var personas = #{}
	
	method estaAdentro(persona) {
		return personas.contains(persona)
	}

	method entrar(persona) {
		if(patovaDeTurno.puedePasar(persona)) {
			personas.add(persona)
		}
	}
	
	method contratarPatova(patova) {
		patovaDeTurno = patova
	}

}