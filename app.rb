require 'sinatra'
require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    redirect '/play'
  end

  get '/play' do
    @player_one = $player_one.name
    @player_two = $player_two.name
    @player_one_hp = $player_one.hp
    @player_two_hp = $player_two.hp
    erb :play
  end

  get '/attack' do
    $player_two.reduce_hp
    @player_one = $player_one.name
    @player_two = $player_two.name
    @player_one_hp = $player_one.hp
    @player_two_hp = $player_two.hp
    erb :attack
  end

  run! if app_file == $0

end
