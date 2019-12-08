require 'pry'
require 'net/http'

class API
  
  def fetch 
    url = "https://ghibliapi.herokuapp.com/films"
    response = Net::HTTP.get(url)
    response["results"].each do |movie|
    name = movie["title"]
    director = movie["director"]
    description = movie["description"]
    Movie.new(name, director, description)
  end 
  
  curl https://ghibliapi.herokuapp.com/films
  
end