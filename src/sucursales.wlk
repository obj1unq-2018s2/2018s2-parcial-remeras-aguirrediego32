import remeras.*

class Pedidos{
	var cantDeRemeras
	
	
	method costoRemera(modeloRemera){
		return modeloRemera.costo()
	}
	
	method precioBase(modeloRemera){
	return cantDeRemeras * self.costoRemera(modeloRemera)
	}
	
	method aplicaDescuento(sucursal){
		return cantDeRemeras >= sucursal.cantDeRemerasMinimas()
	}
	
	method valorDescuento(modeloRemera,sucursal){
		return self.precioBase(modeloRemera) * sucursal.porcentajeDeDescuento() / 100
	}
	
	method precioPedido(modeloRemera,sucursal){
		return if(self.aplicaDescuento(sucursal))
				{self.precioBase(modeloRemera) - self.valorDescuento(modeloRemera,sucursal)}
					else{self.precioBase(modeloRemera)}
	}
}

class Sucursal{
	var property cantDeRemerasMinimas
	var property porcentajeDeDescuento 
	var property modeloRemera 
	var pedidos = []
	
	method agregarPedido(pedido){
		pedidos.add(pedido)
	}
	method recaudacion(){
		return pedidos.sum(){pedido=>pedido.}
	}
}



