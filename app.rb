
require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    session[:game] = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb:play
  end

  get '/attack' do
    @game = session[:game]
    @game.attack(@game.player_2)
    erb:attack
  end

  get '/attack2' do
    @game = session[:game]
    @game.attack(@game.player_1)
    erb:attack2
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
