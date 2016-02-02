require 'sinatra'
require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    # "TEST"
    erb :index
  end

  post '/names' do
    @player_one = params[:player_one]
    @player_two = params[:player_two]
    erb :play
  end

  run! if app_file == $0

end
