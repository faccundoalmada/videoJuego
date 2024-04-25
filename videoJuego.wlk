object delfina{
	
	var property divertida = 0
	var property consola = play  //Asigno play a consola para evitar error en visual studio, pero en wollok asigno desde terminal.
	var property juego = mario   //Asigno mario a juego para evitar error en visual studio, pero en wollok asigno desde terminal.
	
	method agarrar(dispositivo){
		
		consola = dispositivo
		return consola
		
	}
	
	
	method jugar(videojuego){
		

		divertida = videojuego.divertido(consola)
        consola.usar()
       
		
	}
	
	method diversion() = divertida
	
}




object play{
	
	var property jugab = 10
	var property usos = 0
	
	method jugabilidad(){
		
		return jugab
	}
	
	
	method usar(){
		
		usos = usos + 1
		return usos
	}
	
}


object portatil{
	
	
	var property jugab = 0
	var property bateria = 1
	var property usos = 0
	
	
	method jugabilidad(){
		
		if (bateria == 1){
			
			return 8
		}
		
		if (bateria == 0){
			
			return 1
		}
		
		return 0
		 
	}
	
	method usar(){
		
		usos = usos + 1
		bateria = 0
		return usos
	}
}


object arkanoid{
		
	method divertido(consola){
		return delfina.divertida() + 50
	}
	
}

object mario {
	    
    
    method divertido(consola) {
    	
        if (consola == play) {  //En Wollok original se ejecuta de todos modos.
 
            return delfina.divertida() + 100
        } 
        else if (consola == portatil) {
            if (portatil.jugabilidad() == 8) { 
                return delfina.divertida() + 100
            } else {
                return delfina.divertida() + 15
            }
        }
        return 0 
    }
}


object pokemon{
	
	method divertido(consola){
		
		return delfina.divertida() + (consola.jugabilidad() * 10)
	}
	
}