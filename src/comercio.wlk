import remeras.*
import sucursales.*


class Comercio{
	var property sucursales =[]
	
	method recaudacionTotal(){
		return sucursales.sum{sucursal=>sucursal.pedidos().precioPedidos(sucursal.modeloRemera(),sucursal)}
	}
	
}