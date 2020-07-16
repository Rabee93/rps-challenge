require 'sinatra/base'

class Rps < Sinatra::Base
  enable 'sessions'

  get('/') do
    erb(:index)
  end

  post('/names')do
  @playername = params[:playername]
  "Thank you for registering"
end 



  run! if app_file == $0

  end
