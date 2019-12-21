class Filmmaster::CLI
  
  
  def call
    list_movies
    menu
    goodbye
  end


  def list_movies 
    puts "Welcome to Filmmaster!,Here are the top Studio Ghibli films!"
      Filmmaster::API.new.fetch
      Filmmaster::Movie.all.each_with_index do |movie, index|
    puts "#{index+1}. #{movie.name}" 
    end 
  end 

  def menu 
      input = nil
    while input != "exit"
       puts "Enter the number of the movie you would like more information on"
       input = gets.strip
    if input.to_i > 0 && input.to_i < Filmmaster::Movie.all.length 
       chosen_movie = Filmmaster::Movie.all[input.to_i-1]
       puts chosen_movie.name 
       puts chosen_movie.director
       puts chosen_movie.description
	  elsif input == "list"
	     list_movies
	  else
	    puts "Not sure what you want, type list or exit."
	  end
	  end
 end

 def goodbye
    puts "Thank you for using Filmmaster!! Come back soon!"
 end 

 end 