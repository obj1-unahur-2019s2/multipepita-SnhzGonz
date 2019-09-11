
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada
object bigMac {
	method energiaPorGramo() { return 2 }
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramo() { return 20 }
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	method energiaPorGramo() { return 9 }
}

object mijo {
	var cantidadDeJoules = 0
	method mojarse() {cantidadDeJoules = 15}
	method secarse() {cantidadDeJoules = 20}
	method energiaPorGramo() { return cantidadDeJoules }
}

object canelones {
	var cantidadDeJ = 20
	method ponerSalsa() {cantidadDeJ += 5}
	method ponerQueso() {cantidadDeJ +=7}
	method sacarSalsa() {cantidadDeJ -= 5}
	method sacarQueso() {cantidadDeJ -=7}
	method energiaPorGramo() {return cantidadDeJ}
}
// despues, agregar mijo y canelones