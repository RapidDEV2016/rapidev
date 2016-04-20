class Peliculas
	def initialize
	@pistas=["Transcurre en Roma","Los Protagonistas usan Escudos","Esta Pelicula Gano al menos un Oscar "]
	@@titulopelicula="GLADIADOR"
	@resp= ""
	end
	def pista
		return "#{ @pistas[0] }"
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
