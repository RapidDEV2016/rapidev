class Peliculas
	def initialize
	@pistas=["Transcurre en Roma","Los Protagonistas usan Escudos","Esta Pelicula Gano al menos un Oscar "]
	@@titulopelicula="GLADIADOR"
	@estados=["Jugando", "Juego finalizado", "Juego reiniciado"]
	@indiceestados = 0
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
end
