import comidas.* 
import pepita.*
import masAves.*

object roque {
	
	var pupilas=[]
	
	method agregarPupila(unAve){
		pupilas.add(unAve)
	}
	method quitarPupila(unAve){
		pupilas.remove(unAve)
	}
	method cantidadDePupilas() = pupilas.size()
	
	method entrenar(pupila) {
		pupila.volar (10)
		pupila.comer (alpiste, 300)
		pupila.volar (5)
		pupila.haceLoQueQuieras()
	}
	
	method entrenarTodas(){
		pupilas.forEach({a => a.entrenar()})
	} 
	
	method entrenarAvesFelices(){
		pupilas.filter({b => b.estaFeliz()}).foreach({a => a.entrenar()})
	}
}