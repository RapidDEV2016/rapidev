require 'sinatra'
require_relative "./lib/peliculas.rb"

get '/' do
	@@game = Peliculas.new
	@pista = @@game.pista
	erb :peliculas
end
