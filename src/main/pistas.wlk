object mainRoom {

	var patovaDeTurno
	var personas = #{}

	method bailar(persona) {
		if (self.estaEnPista(persona)) {
			persona.disminuirEnergia(40)
			persona.aumentarDiversion(30)
		}
	}

	method entrar(persona) {
		if (patovaDeTurno.puedePasar(persona)) {
			personas.add(persona)
		}
	}

	method cuantosBailan() {
		return personas.size()
	}

	method estaEnPista(alguien) {
		return personas.contains(alguien)
	}

	method contratarPatova(patova) {
		patovaDeTurno = patova
	}

}

object panoramaBar {

	var patovaDeTurno
	var dj
	var personas = #{}

	method bailar(persona) {
		if (self.estaEnPista(persona)) {
			dj.hacerBailar(persona)
		}
	}

	method entrar(persona) {
		if (patovaDeTurno.puedePasar(persona)) {
			personas.add(persona)
		}
	}

	method cuantosBailan() {
		return personas.size()
	}

	method estaEnPista(alguien) {
		return personas.contains(alguien)
	}

	method contratarPatova(patova) {
		patovaDeTurno = patova
	}

	method contratarDj(unDj) {
		dj = unDj
	}

}

object darkRoom {

	var patovaDeTurno
	var personas = #{}

	method bailar() {
	}

	method entrar(persona) {
		if (patovaDeTurno.puedePasar(persona)) {
			personas.add(persona)
		}
	}

	method cuantosBailan() {
		return personas.size()
	}

	method estaEnPista(alguien) {
		return personas.contains(alguien)
	}

	method contratarPatova(patova) {
		patovaDeTurno = patova
	}

}

