import comidas.*
object pepon {
	var energia2 = 0
	method energia() { return energia2 }
	method comer(cosa, gramos) { energia2 += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia2 -= kms + 10 }
	method estaDebil() { return energia2 < 50 } 
	method estaFeliz() { return energia2 >= 500 && energia2 <= 1000 }  
	
	method cuantoQuiereVolar() { 
		var cuanto = energia2 / 5
		if (energia2.between(300, 400)) { cuanto += 10 }
		if (energia2 % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	
	method salirAComer() {
		self.volar(5)
		self.comer(alpiste, 80)
		self.volar(5)
	}
	
	method haceLoQueQuieras() { 
		if (self.estaDebil()) {
			self.comer(alpiste, 20)
			self.volar(8)		
		}
	}
}



object pipa {
	var energia1 = 0
	method energia() { return energia1 }
	method comer(cosa, gramos) { energia1 += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia1 -= kms + 10 }
	
	method estaDebil() { return energia1 < 50 }  
	method estaFeliz() { return energia1 >= 500 && energia1 <= 1000 } 
	
	method cuantoQuiereVolar() { 
		var cuanto = energia1 / 5
		if (energia1.between(300, 400)) { cuanto += 10 }
		if (energia1 % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	
	method salirAComer() {
		self.volar(5)
		self.comer(alpiste, 80)
		self.volar(5)
	}
	
	method haceLoQueQuieras() { 
		if (self.estaDebil()) {
			self.comer(alpiste, 20)
		} else if (self.estaFeliz()) {
			self.volar(8)		
		}
	}
}

