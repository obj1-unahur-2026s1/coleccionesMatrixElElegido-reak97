import pasajeros.*

object nave {
  const pasajeros = []

  method subirALaNave(unPasajero) {

    if (self.estaEnLaNave(unPasajero)){
        self.error("El pasajero se encuentra en la nave")
    }
    pasajeros.add(unPasajero)        
  }

  method estaEnLaNave(unPasajero) {
    return pasajeros.contains(unPasajero)
  }

  method bajaerseDeLaNave(unPasajero) {

    if (not self.estaEnLaNave(unPasajero)){
        self.error("El pasajero no se encuentra en la nave")
    }
    pasajeros.remove(unPasajero)        
  }

  method cuantosPasajerosHay() {
    return pasajeros.size()
  }

  method pasajeroDeMayorVitalidad() {
    return pasajeros.max({p => p.vitalidad()})
  }

  method estaElElegido() {
    return pasajeros.any({p => p.esElElegido()})
  }

  method chocar() {
    pasajeros.forEach({p => p.saltar()})
    pasajeros.clear()
  }

  method estaEquilibrada() {
    return self.pasajeroDeMayorVitalidad().vitalidad() <= self.pasajeroDeMenorVitalidad().vitalidad() * 2
  }

  method pasajeroDeMenorVitalidad() {
    return pasajeros.min({p => p.vitalidad()})
  }

  method saltan(unaLista) {
    unaLista.forEach({p => p.saltar()})
  }

  method acelerar() {
    self.saltan(self.noElegidos())
  }

  method noElegidos() {
    return pasajeros.filter({p => not p.esElElegido()})
  }

  method vitalidadDeLosPasajeros() {
    return pasajeros.map({p => p.vitalidad()})
  }

  method pasajerosDeMenorAMayorVitalidad() {
    pasajeros.sortBy({
        p1, p2 => p1.vitalidad() < p2. vitalidad()
    })
  }

  method cualquierPasajero() {
    return pasajeros.anyOne()
  }
  
  method cantidadElegidosEnLaNave() {
    return pasajeros.count({p => p.esElElegido()})
  }

}