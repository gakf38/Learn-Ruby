=begin
Learn Ruby: Ordering Your Library
=end

def alphabetize(arr, rev=false)
    arr.sort!
    if rev == true
        return arr.reverse!
    else
        return arr
    end
end

books = ["Harry Potter", "The Shining", "Lord of the Rings"]
puts alphabetize(books, true)
