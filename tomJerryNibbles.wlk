object tom {
  var energia = 50
  var ultimoRatonComido = jerry
  var distanciaRecorrida = 0
  
  method comer(unRaton) {
    energia = (energia + 12) + unRaton.peso()
    ultimoRatonComido = unRaton
  }
  
  method correr(metros) {
    energia -= metros / 2
    distanciaRecorrida += metros
  }
  
  method velocidadMaxima() = 5 + (energia / 10)

  method energia() = energia

  method puedeCazar(distancia) = energia > distancia

  method cazar(unRaton,unaDistancia) {
    if(self.puedeCazar(unaDistancia)) {
        self.correr(unaDistancia)
        self.comer(unRaton)
    }
  }
}

object jerry {
  var edad = 2
  
  method cumplirAnios() {
    edad += 1
  }
  
  method peso() = edad * 20
}

object nibbles {
  method peso() = 35
} 

// Inventar otro ratón

object pulga {
    //pulga puede cambiar su peso a voluntad
  var peso = 30

  method peso(unNuevoPeso) {
    peso = unNuevoPeso
  }

  method peso() = peso
}


// Inventar otro ratón