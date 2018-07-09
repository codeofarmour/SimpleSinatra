require 'sinatra'
require 'movie'

get('/movies') do
  @movie = Movie.new
  @movie.title = "Sharknado"
  erb :index
end
