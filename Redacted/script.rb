=begin
Learn Ruby: Redacted!
=end

puts "Enter a string"
text = gets.chomp
words = text.split(" ")

puts "Enter a word to redact"
redact = gets.chomp

redacted = "" 

words.each { |word|
    if word.downcase == redact.downcase
        redacted += "REDACTED" + " "
    else
        redacted += word + " "
    end
}

print redacted
