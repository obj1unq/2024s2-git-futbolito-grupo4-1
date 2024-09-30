/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}

	method irAPelota(){
		position = game.at(5, 5) 
	}
	
	method patear(){
		
		self.validarSiEstaSobrePelota()
		pelota.avanzar()
	}



	method validarSiEstaSobrePelota() {
		if (not self.estaSobrePelota()){self.error("Lionel no esta sobre la pelota" + " position lionel: "+self.position().x() + " " + pelota.position().x())} 
	}

	method estaSobrePelota(){
		const colisioner = game.colliders(self)
		return not colisioner.isEmpty()
	}
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)

	method avanzar(){
		position = game.at((game.width() - 1).min(position.x() + 3), position.y()) 
	}	


}
