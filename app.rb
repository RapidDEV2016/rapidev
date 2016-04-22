require 'sinatra'
require_relative "./lib/peliculas.rb"

get '/' do
	@@game = Peliculas.new
	@indicepistas = @@game.incrementarpista
	@pista = @@game.pista
	erb :peliculas
end

post '/terminar' do
	@@game = Peliculas.new
	@indicepistas = @@game.incrementarpista
	@pista = @@game.pista
	@@game.reiniciar
	@estado = @@game.estado
	erb :peliculas
end

post '/reiniciar' do
	@@game = Peliculas.new
	@pista = @@game.pista
	@indicepistas = @@game.incrementarpista
	@@game.reiniciar
	@estado = @@game.estado
	erb :peliculas
end

post '/' do
  @@game = Peliculas.new
  @indicepistas = @@game.incrementarpista
  @@game.respuesta params[:respuesta]
  @evaluar = @@game.evaluar
  erb :peliculas
end

post '/nuevapista' do
	@@game = Peliculas.new
	@indicepistas = @@game.incrementarpista
	@indicepistas = @@game.incrementarpista
	@pista = @@game.pista
	erb :peliculas
end
