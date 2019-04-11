object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var dinero = 0
	var deuda = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo()
	{
		dinero += sueldo
		return dinero
	}
	
	method gastar(cuanto)
	{
		if (dinero >= cuanto)
		{
			dinero-= cuanto
		}
			else if (dinero > 0)
			{
					deuda += cuanto - dinero
					dinero = 0
				
				
			}
				else
				{
				deuda += cuanto	
				}
		
			
	}
	
	method totalDeuda()
	{
		
		return deuda
	}
	
	
	method totalDinero()
	{
		
		return dinero
	}
	
			method pagarDeuda()
			{
		
		//var cuantoDescuento = deuda.min(sueldo)
		
		
		
		
		
				if (dinero >= deuda)
				{
					 dinero -= deuda
					 deuda = 0
				}
				else
				{
					deuda -= dinero
					dinero = 0
					
				}
				
				
			}	
}

object baigorria {
	var total= 0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	
}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
		method cobrarSueldo()
		{
		return self.sueldo()
		}	
		
	method totalCobrado()
	{
		total=total+self.sueldo()
	return	(total)
	
		
	}
	
	
	

 	

}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
		
	}
}




