class Peliculas
	def initialize
	@pistas=["Transcurre en Roma","Los Protagonistas usan Escudos","Esta Pelicula Gano al menos un Oscar "]
	@@titulopelicula="GLADIADOR"
	@estados=["Jugando", "Juego finalizado", "Juego reiniciado"]
	@indiceestados = 0
	@resp= ""
end
	def pista
		return "#{ @pistas[0] }"
	end

	def estado
		return "#{ @estados[@indiceestados] }"
	end
	def terminar
		@indiceestados = 1
	end
	def reiniciar
		@indiceestados = 2
	end	
	
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
end
