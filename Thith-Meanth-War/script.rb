=begin
Learn Ruby: Thith Meanth War!
=end

print "Enter a string please: "
user_input = gets.chomp

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
elsif user_input.include? "S"
    user_input.gsub!(/S/, "Th")
else
    print "Nothing to change."
end

puts "#{user_input}"
