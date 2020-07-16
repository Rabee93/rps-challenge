require 'sinatra/base'
require_relative 'lib/rps'
class Rps < Sinatra::Base
  enable 'sessions'

  get('/') do
    erb(:index)
  end

  post('/names')do
  session[:playername] = params[:playername]
  @player = session[:playername]
  erb(:input)
end

post('/result') do
  game = Game.new(params[:input])
  game.play
end


  run! if app_file == $0

  end
