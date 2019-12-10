class Filmmaster::Movie
  
 attr_accessor :name, :popularity, :vote_average, :overview
 
 @@all = []
 
  def initialize(name, popularity, vote_average, overview)
    @name = name
    @popularity = popularity
    @vote_average = vote_average
  end 
  
  def self.all
    @@all 
  end 
  
  def save 
    @@all << self
  end 
  
  
  
  
  
end