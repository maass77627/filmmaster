class Filmmaster::CLI
  
  
  def call 
   puts "Welcome to Filmmaster!,Here are the top Studio Ghibli films!"
     Filmmaster::API.new.fetch
     list_movies
     menu 
     user_choice = get_user_input
   while validate_input(user_choice) != true 
     menu
     user_choice = get_user_input
   end 
   if user_choice != "exit" 
     chosen_movie = Filmmaster::Movie.all[user_choice.to_i-1]
     display_movie(chosen_movie)
     final_choice
   end 
     goodbye
    end 
  
  def list_movies
     Filmmaster::Movie.all.each_with_index do |movie, index|
     puts "#{index+1}. #{movie.name}" 
    end 
  end 
  
  def get_user_input 
    input = gets.strip 
  end 
  
  def validate_input(input) 
    if input == "exit"
      true 
  
    elsif input.to_i > 0 && input.to_i < Filmmaster::Movie.all.length 
      true
   else 
      false
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
  
  def final_choice
  puts "If you would like to see another movie, enter number. Hit any other key to exit"
  user_choice = get_user_input
  if  validate_input(user_choice) && user_choice != "exit" 
    menu
  else 
   goodbye
  end 
  
  
  end 
  
  def goodbye
    puts "Thank you for using Filmmaster!! Come back soon!"
  end 
    
  
end