class Peliculas
	def initialize
	@pistas=["Transcurre en Roma","Los Protagonistas usan Escudos","Esta Pelicula Gano al menos un Oscar "]
	@@titulopelicula="GLADIADOR"
	@estados=["Jugando", "Juego reiniciado", "Has salido del juego"]
	@indiceestados = 0
	@resp= ""
	@indicepistas = 0
	@respuestas = 0
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
	def incrementarrespuestas
		return @respuestas += 1
	end
	def reiniciar
		@indiceestados = 1
	end	
	
	def evaluar
		if @resp.upcase == @@titulopelicula and @respuestas < 3
			return "Ganador"
		else
			if @resp.upcase != @@titulopelicula and @respuestas > 2
				return "Perdedor"
			end
		end
		return "Intente nuevamente"
	end
	
	def respuesta arg
		@respuestas += 1
		@resp = arg
	end

	def salir
		@indiceestados = 2
	end
end
