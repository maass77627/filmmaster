require 'pry'
require 'net/http'
require 'httparty'

class Filmmaster::API
  
  def fetch
    url = URI.parse "https://ghibliapi.herokuapp.com/films"
    response = Net::HTTP.get(url)
    results = JSON.parse response 
    results.each do |movie|
    name = movie["title"]
    director = movie["director"]
    description = movie["description"]
    Filmmaster::Movie.new(name, director, description)
    end 
  end 
 
  
end