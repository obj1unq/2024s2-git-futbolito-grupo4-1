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

	method comprobarEstaSobreLaPelota(){
		if(not self.estaSobreLaPelota()){
			self.error("El personaje no está sobre la pelota")
		}
	}

	method estaSobreLaPelota(){
		return self.position() == pelota.position()
	}

	method taquito(){
		self.comprobarEstaSobreLaPelota()
		pelota.moverDeTaco()
	}
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)

	method moverDeTaco(){
		position = game.at(0.max(position.x()-2),position.y())
	}	
}



