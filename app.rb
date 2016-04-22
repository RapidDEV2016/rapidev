require 'sinatra'
require_relative "./lib/peliculas.rb"

get '/' do
	@@game = Peliculas.new
	@indicepistas = @@game.incrementarpista
	@pista = @@game.pista
	erb :peliculas
end


post '/reiniciar' do
	@@game = Peliculas.new
	@indicepistas = @@game.incrementarpista
	@pista = @@game.pista
	@@game.reiniciar
	@estado = @@game.estado
	erb :peliculas
end

post '/nuevapista' do
	@indicepistas = @@game.incrementarpista
	@pista = @@game.pista
	erb :peliculas
end

post '/nuevarespuesta' do
	@@game.respuesta params[:respuesta]
	@evaluar = @@game.evaluar
	@pista = @@game.pista
	erb :peliculas
end

post '/salir' do
	erb :salir
end
