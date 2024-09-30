/** First Wollok example */
import wollok.game.*

object lionel {
	var casaca = titular
	
	var property position = game.at(3,5)
	
	method image() {
		return casaca.image()
		}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}
	method inicio() {
		position = game.at(0,5)
	}
	method cambiarCamiseta() {
		self.validarPosicion()
		self.cambiarCasaca()

	}
	method validarPosicion() {
		return if (position.x() != 0 ){
				self.error("no esta en el borde izquierdo")
		}
	}
	method cambiarCasaca() {
		casaca = casaca.opuesta()		
	}
	
}
object titular {

method image() {
	return "lionel-titular.png"
}
method opuesta(){
	return suplente
}

}
object suplente {
	method image() {
	
	return "lionel-suplente.png"
	}
	method opuesta(){
		return titular
	}
}

object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	
}
