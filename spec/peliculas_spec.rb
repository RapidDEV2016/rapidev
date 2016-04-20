require_relative "../lib/peliculas.rb"

describe "Juego Peliculas" do

	it "Presentar Pista" do
		game=Peliculas.new
		game.pista.should=="Transcurre en Roma"
	end

	it "Terminar" do
		game=Peliculas.new
		game.terminar
		game.estado.should=="Juego finalizado"
	end

	it "Reiniciar" do
		game=Peliculas.new
		game.terminar
		game.reiniciar
		game.estado.should=="Juego reiniciado"
	end
	
end
