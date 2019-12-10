class Filmmaster::CLI
  
  
  def call 
   puts "Welcome to Filmmaster!!"
   "Here are the current movies playing near you!"
   Filmmaster::API.new.fetch
   menu 
   goodbye
    end 
  
  def menu 
    ""
    puts "Enter the name of the movie you would like more information on"
  end 
  
  def goodbye
    "Thank you for using Filmmaster!! Enjoy your Movie!"
    
  
end