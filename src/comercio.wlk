import remeras.*
import sucursales.*


class Comercio{
	var property sucursales =[]
	
	method recaudacionTotal(){
		// Envia mensaje "precioPedidos" a una colección.
		return sucursales.sum{sucursal=>sucursal.pedidos().precioPedidos(sucursal.modeloRemera(),sucursal)}
	}
	
}