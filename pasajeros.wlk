import nave.*
object neo {
  var energia = 100

  method saltar() {
    energia= energia / 2  
  }
  
  method vitalidad() {
   return energia * 0.1  
  }
  method esElElegido() {
    return true
  }

  method subirALaNave() {
    nave.subirALaNave(self)
  }

  method bajarseDeLaNave() {
    nave.bajaerseDeLaNave(self)
  }
}

object morfeo {  
  var vitalidad = 8
  var estaCansado = false

  method esElElegido() {
    return false  
  }

  method saltar() {
    estaCansado= not estaCansado
    vitalidad = 0.max(vitalidad - 1)
  }

  method vitalidad() {
    return vitalidad
  }

  method subirALaNave() {
    nave.subirALaNave(self)
  }

  method bajarseDeLaNave() {
    nave.bajaerseDeLaNave(self)
  }
  
}

object trinity {

  method vitalidad() {
    return 0
  }

  method esElElegido() {
    return false
  }

  method saltar() {}  

  method subirALaNave() {
    nave.subirALaNave(self)
  }

  method bajarseDeLaNave() {
    nave.bajaerseDeLaNave(self)
  }

}