require 'movie'
require 'yaml/store'

store = YAML::Store.new('test.yml')

first_movie = Movie.new
first_movie.title = "Night of the Comet"
first_movie.director = "Thom Eberhardt"
first_movie.year = 1984

second_movie = Movie.new
second_movie.title = "Deadly Friend"
second_movie.director = "Wes Craven"
second_movie.year = 1986

store.transaction do
  store["Night of the Comet"] = first_movie
  store["Deadly Friend"] = second_movie

  p store["Night of the Comet"]
end
