class Book
  def initialize
    @title = ""
    @chapters = []
  end

  attr_accessor :title

  def add_chapter(name)
    @chapters.push(name)
  end

  def chapters
    puts @chapters.count
    puts "Your book: " + @title + " has " + @chapters.count.to_s + " chapters: " + @chapters.join(" ").to_s  
  end
end

book = Book.new
book.title = "My Awesome Book"
book.add_chapter("Chapter 1")
book.add_chapter("Chapter 2")
book.chapters
