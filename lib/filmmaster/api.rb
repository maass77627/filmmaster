require 'pry'
require 'net/http'
require 'httparty'

class Filmmaster::API
  
   def fetch 
    key = ENV["efe7f0794a75203b20e8516137dc9c30"]
    url = 'https://api.themoviedb.org/3/movie/now_playing?api_key=efe7f0794a75203b20e8516137dc9c30&language=en-US&page=1'
    response = HTTParty.get(url)
    response["results"].each do |movie|
    name = movie["title"]
    popularity = movie["popularity"]
    vote_average = movie["vote_average"]
    overview = movie["overview"]
    Filmmaster::Movie.new(name, popularity, vote_average, overview)
  end 
end 
 
  
end