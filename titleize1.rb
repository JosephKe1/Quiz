# 7. Implement the following code in Ruby: Create a module called HelperMethods that include a method called `titleize` that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from.

# 11. BONUS: Rewrite the method `titleize` in question #7 without mutating any variable.

module HelperMethods

  def capitalize
    array = str.split
    array.each { |word| word.capitalize! }
    puts array.join(" ").gsub("The", "the").gsub("In", "in").gsub("Of", "of").gsub("And", "and").gsub("Or", "or").gsub("From", "from")
  end

end

class Title
  attr_accessor :str

  include HelperMethods
end

newTitle = Title.new
newTitle.str = "hello The In From Of And Or world"
puts newTitle.capitalize
