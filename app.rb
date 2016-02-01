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
  erb(:index)
end
