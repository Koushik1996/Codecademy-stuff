movies={
    Conjuring:2
}
choice=gets.chomp
case choice
    when "add"
    title=gets.chomp.to_sym
    rating= gets.chomp.to_i
    if movies[title].nil?
        movies[title]=rating
    else
        puts "sorry Movie already there"
    end

    when "update" 
    title=gets.chomp.to_sym
    if movies[title].nil?
        puts "Sorry movie not present"
    else
        puts "ur new rating"
        rating= gets.chomp.to_i
        movies[title]=rating 
    end
    when "display" 
    movies.each do |x,y|
        puts "#{x}: #{y}"
    end

     when "delete"
     title=gets.chomp.to_sym
    if movies[title].nil?
        puts "Sorry movie not present"
    else
        movies.delete(title)
    end
else 
    puts "error"
end
