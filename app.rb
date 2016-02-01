require 'sinatra'
get '/' do
  "HELLO ARNOLD"
end

get '/secret' do
  "NNOOOOOO"
end

get '/arnold' do
  ":)"
end

get '/yes' do
  'yes'
end

get '/dss' do
  'Z SUCKS'
end

get '/cat' do
  @name = ['amigo', 'oscar', 'viking'].sample
  erb(:index)
end
