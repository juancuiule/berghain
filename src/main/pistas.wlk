import main.berghain.*

object mainRoom {

	method bailar(persona) {
		if (berghain.estaAdentro(persona)) {
			persona.disminuirEnergia(40)
			persona.aumentarDiversion(30)
		}
	}

}

object panoramaBar {

	var dj

	method bailar(persona) {
		if (berghain.estaAdentro(persona)) {
			dj.hacerBailar(persona)
		}
	}

	method contratarDj(unDj) {
		dj = unDj
	}

}

object darkRoom {

	method bailar() {
	}

}

