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

get '/random-cat' do
  @name = ['amigo', 'oscar', 'viking'].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:form)
end
