class Filmmaster::CLI
  
  
  def call 
   puts "Welcome to Filmmaster!!"
   "Here are the current movies playing near you!"
   Filmmaster::API.new.fetch
   list_movies
   menu 
   user_choice = get_user_input
   while validate_input(user_choice) != true 
     menu
     user_choice = get_user_input
   end 
   chosen_movie = Filmmaster::Movie.all[user_choice-1]
     display_movie(chosen_movie)
   goodbye
    end 
  
  def list_movies
    Filmmaster::Movie.all.each_with_index do |movie, index|
      puts "#{index+1}. #{movie.name}" 
    end 
  end 
  
  def get_user_input 
    input = gets.strip 
    input.to_i 
  end 
  
  def validate_input(input) 
    if input < 1 || input > Filmmaster::Movie.all.length 
      false 
    else 
      true 
    end 
  end 
  
  def display_movie(chosen_movie)
    puts chosen_movie.name 
    puts chosen_movie.director
    puts chosen_movie.description
  end 
  
  def menu 
    ""
    puts "Enter the number of the movie you would like more information on"
  end 
  
  def goodbye
    "Thank you for using Filmmaster!! Enjoy your Movie!"
  end 
    
  
end