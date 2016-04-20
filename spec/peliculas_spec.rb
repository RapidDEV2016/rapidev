require_relative "../lib/peliculas.rb"

describe "Juego Peliculas" do

	it "Presentar Pista" do
		game=Peliculas.new
		game.pista.should=="Transcurre en Roma"		
	end
	
	it "Ingresa Respuesta" do
		game=Peliculas.new
		game.evaluar.should==game.evaluar 	
	end

end
