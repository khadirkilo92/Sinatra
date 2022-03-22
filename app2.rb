require 'sinatra' 
require "sinatra/reloader"  if development?

get '/' do
  "hello!"
end
get '/secret' do 
  "hello James"
end

get '/food' do 
  "the best is kentucky fried chicken"
end

get '/name' do 
  user = gets.chomp
  return user
end 

get '/random-cat' do
    @names = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
end
get '/cat-form' do
    erb :cat_form
end

post '/named-cat' do
    p params
    @names = params[:name]
    erb :index
end


