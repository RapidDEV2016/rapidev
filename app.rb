require 'sinatra'
require_relative "./lib/peliculas.rb"

get '/' do
	@@game = Peliculas.new
	@pista = @@game.pista
	erb :peliculas
end

<<<<<<< HEAD
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
=======
post '/' do
  @@game = Peliculas.new
  @@game.respuesta params[:respuesta]
  @evaluar = @@game.evaluar
>>>>>>> e227ae2021b3f377d074014509839c3c8197ee49
end
