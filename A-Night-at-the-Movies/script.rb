=begin
A Night at the Movies
=end

movies = {
    :"Happy Gilmore" => 7    
}

puts "What do you want to do?"
choice = gets.chomp

case choice
when "add"
    puts "Enter the title of the movie to add"
    title = gets.chomp.to_sym
    if(movies[title].nil?)
        puts "Enter the rating of the movie to add"
        rating = gets.chomp.to_i
        movies[title] = rating
        puts "#{title} was added with a rating of #{rating}"
    else
        puts "The movie already exists!"
    end
when "update"
    puts "Enter the title of the movie to update"
    title = gets.chomp.to_sym
    if(movies[title].nil?)
        puts "This movie does not exist!"
    else
        puts "Enter the new rating of the movie to update"
        rating = gets.chomp.to_i
        movies[title] = rating
    end
when "display"
    movies.each { |movie, rating| puts "#{movie}: #{rating}" }
when "delete"
    puts "Enter the title of the movie to delete"
    title = gets.chomp.to_sym
    if(movies[title].nil?)
        puts "This movie does not exist!"
    else
        movies.delete(title)
        puts "#{title} was deleted"
    end
else
    puts "Error!"
end
