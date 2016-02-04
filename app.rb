require 'sinatra/base'
require 'shotgun'
require './lib/player'
# require 'player'
# require 'player.rb'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:play)
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    $game.attack($player_2)
    @player_1_hitpoints = $player_1.hitpoints
    @player_2_hitpoints = $player_2.hitpoints
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
