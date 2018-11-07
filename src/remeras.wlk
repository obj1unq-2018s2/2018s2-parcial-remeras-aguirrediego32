class RemerasLisas{
	var property talle 
	var property color
	
	method talleChico() = talle > 32 and talle <= 40
	
	method talleGrande() = talle >= 41 and talle < 48
	
	method esColorBasico(){
	return color == "blanco" or
			color == "negro" or
			color == "gris"
	}
	
	method costoTalle(){
		return  if( self.talleChico()) {80}
			else{100}
}			 
	method costo(){	 	
	return if(not self.esColorBasico()){self.costoTalle() *0.1 + self.costoTalle()}
		else{self.costoTalle()}
		}
	
}

class RemerasBordadas inherits RemerasLisas   {
	var property bordado = 0
	
	method valorBordado()=
	if( self.bordado() == 1){20} 
		else{10}
		
		
	override	method costo(){
		return super() + self.valorBordado() * bordado
		
		}
}

class RemerasSublimadas inherits RemerasLisas{
	var property alto
	var property ancho
	var property derechoDeAutor
	
	method costoSublimado()= alto * ancho *0.50
	
	override method	costo(){
		return super() + self.costoSublimado() + derechoDeAutor
	}
}






// pedido conozca de que sucursal es