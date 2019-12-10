class Filmmaster::Movie
  
 @@all = []
  
 attr_accessor :name, :director, :description
 
  def initialize(name, director, description)
    @name = name
    @director = director
    @description = description
    save
  end 
  
  def self.all
    @@all 
  end 
  
  def save 
    @@all << self
  end 
  
  
  
  
  
  
end