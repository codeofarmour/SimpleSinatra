require 'sinatra'
require 'movie'

get('/movies') do
  @movies = []
  @movies[0] = Movie.new
  @movies[0].title = "Alligator"
  @movies[1] = Movie.new
  @movies[1].title = "Piranha"
  @movies[2] = Movie.new
  @movies[2].title = "Sharknado"
  erb :index
end

get('/movies/new') do
  erb :new
end

post('/movies/create') do
  "Received: #{params.inspect}"
end
