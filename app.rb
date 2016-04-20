require 'sinatra'
require_relative "./lib/peliculas.rb"

get '/' do
	@@game = Peliculas.new
	@pista = @@game.pista
	erb :peliculas
end

post '/terminar' do
	@@game = Peliculas.new
	@@game.terminar
	@estado = @@game.estado
	erb :peliculas
end

post '/reiniciar' do
	@@game = Peliculas.new
	@pista = @@game.pista
	@@game.terminar
	@@game.reiniciar
	@estado = @@game.estado
	erb :peliculas
end

post '/' do
  @@game = Peliculas.new
  @@game.respuesta params[:respuesta]
  @evaluar = @@game.evaluar
end
