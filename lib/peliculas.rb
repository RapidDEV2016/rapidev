class Peliculas
	def initialize
	@pistas=["Transcurre en Roma","Los Protagonistas usan Escudos","Esta Pelicula Gano al menos un Oscar "]
	@@titulopelicula="GLADIADOR"
<<<<<<< HEAD
	@estados=["Jugando", "Juego finalizado", "Juego reiniciado"]
	@indiceestados = 0
=======
	@resp= ""
>>>>>>> e227ae2021b3f377d074014509839c3c8197ee49
	end
	def pista
		return "#{ @pistas[0] }"
	end
<<<<<<< HEAD
	def estado
		return "#{ @estados[@indiceestados] }"
	end
	def terminar
		@indiceestados = 1
	end
	def reiniciar
		@indiceestados = 2
	end	
=======
	
	def evaluar
		if @resp.upcase == @@titulopelicula 
			return "Ganador"
		else
			return "Perdedor"
		end
	end
	
	def respuesta arg
		@resp = arg
	end
>>>>>>> e227ae2021b3f377d074014509839c3c8197ee49
end
