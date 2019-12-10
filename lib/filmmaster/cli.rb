class Filmmaster::CLI
  
  
  def call 
   puts "Welcome to Filmmaster!!"
   Filmmaster::API.new.fetch
   
  end 
  
  
end