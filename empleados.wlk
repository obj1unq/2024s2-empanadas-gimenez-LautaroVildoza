object gimenez {
  var fondo = 300000 

  method fondo() {
    return fondo
  }

  method pagarSueldo(empleado) {
    fondo = fondo - empleado.sueldo()
   empleado.cobrarSueldo()
  }
}


object galvan {
  var sueldo = 15000
  var saldo = 0

  method sueldo() {

    return sueldo
  }

  method sueldo(_sueldo){
      sueldo = _sueldo
  }

  method cobrarSueldo() {
    
    saldo = saldo + sueldo
    
  }

  method gastar(cuanto) {
     saldo = saldo - cuanto
  }

  method deuda() {
    return if( saldo < 0)
              saldo 
            else 0
  }   

  method dinero() {
    return if(saldo >= 0) 
            saldo
            else 0
  }
}

object baigorria {
  var totalCobrado = 0
  var cantidadDeEmpandasQueVendio = 0


  method sueldo() {
    return 15 * self.cantidadDeEmpandasQueVendio()
  }

  method vender(cantEmpanadas) {
    cantidadDeEmpandasQueVendio = cantidadDeEmpandasQueVendio + cantEmpanadas
  }

  method cantidadDeEmpandasQueVendio() {
    return cantidadDeEmpandasQueVendio
  }

   method cobrarSueldo() {
    totalCobrado = totalCobrado + self.sueldo()
    cantidadDeEmpandasQueVendio = 0
  }

  method totalCobrado() {
    return totalCobrado
  }
}
