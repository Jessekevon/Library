class Library
  def initialize
    @books =[]
    @users = []
end

  def add_book(book)
    @books << book
      puts "you have added #{@books.count} to the Library"
  end

  def add_user(user)
  	@users << user
  	  puts "there are #{@users.count} in the system"
  	end
  end

  class Book
  	def initialize
  		@authors = []
  		@titles = []
  		@descriptions = []
  	end

  	def add_author(author)
  		@authors << author
  		  puts "a new #{@authors} has been added to the system"
  	end

  	def add_title(title)
  		@titles << title
  	end

  	def description(description)
  		@descriptions << description
  		  puts "a new #{description} has been added to the system"
  	end


  end
