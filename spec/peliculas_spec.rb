require_relative "../lib/peliculas.rb"

describe "Juego Peliculas" do

	it "Presentar Pista" do
		game=Peliculas.new
		game.incrementarpista
		game.pista.should=="Transcurre en Roma"
	end

	it "Reiniciar" do
		game=Peliculas.new
		game.reiniciar
		game.estado.should=="Juego reiniciado"
	end
	
	it "Ingresa Respuesta" do
		game=Peliculas.new
		game.respuesta "GLADIADOR"
		game.evaluar.should == "Ganador"
	end

	it "Ingresa Respuesta erroenea" do
		game=Peliculas.new
		game.evaluar.should == "Intente nuevamente"	
	end

	it "Solicitar nueva pista" do
		game=Peliculas.new
		game.incrementarpista
		game.incrementarpista
		game.pista.should=="Los Protagonistas usan Escudos"	
	end

	it "Agregar muchas respuesta" do
		game=Peliculas.new
		game.respuesta "Batman"
		game.respuesta "Superman"
		game.respuesta "Pepe"
		game.evaluar.should == "Perdedor" 
	end

end
