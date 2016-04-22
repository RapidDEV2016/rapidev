class Peliculas
	def initialize
	@pistas=["Transcurre en Roma","Los Protagonistas usan Escudos","Esta Pelicula Gano al menos un Oscar "]
	@@titulopelicula="GLADIADOR"
	@estados=["Jugando", "Juego reiniciado"]
	@indiceestados = 0
	@resp= ""
	@indicepistas = 0
end
	def pista
		return "#{ @pistas[@indicepistas - 1] }"
	end

	def estado
		return "#{ @estados[@indiceestados] }"
	end
	def incrementarpista
		return @indicepistas += 1
	end
	def reiniciar
		@indiceestados = 1
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
