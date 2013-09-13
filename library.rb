class Book
  attr_accessor :title, :author, :description, :status, :due_date
  # so you can enter book.new and insert the title
  def initialize(title, author = nil, description = nil) #setting the value of author/description to nil in the intitialize method gives me the ability to choose to pass in a value when I call the method later.
    @author = author 
    @description = description
    @status = "Checked In" #automatically assings the status to "checked in"
    @due_date = nil #Time.now?
    @renter = nil
  end
end
  # u = User.new("jesse")
  # u.name => jesse
  # u.books__checked_out => []
class User 
  attr_accessor :name, :books_checked_out
  # pass in name to the initialize method
  def initialize(name)
    @name = name  # name equals whatever name the user assigns to it
    @books_checked_out = [] # need to assign my book method to books_checked_out empty array
  end
    # add info that is stored in the book method to be passed into the books_checked_out empty array
  def add_book(book)
    @books_checked_out << book # Pushes book into my checked out empty array.
    puts "you have checked out #{book.name} from the Library!"
  end
  # returns true if user has rented less than two books and 
  # has no overdue books
  def can_check_out_books? #insert question mark after method if it returns true/false.
    @books_checked_out.each do |b| 
      if b.status == "Overdue"
        return false # return gets me out of the method
    end
  end

  return @books_checked_out.count >= 2
      return false
    else
      return true
  end 
end

# interfaces the interaction between books and users.
# Libraray.new
# Library.new([book1, book2, book3])

class Library
  attr_accessor :title
  def initialize
    @books = []
    @users = []
  end
# takes in book as parameter and pushes in to my books array
  def add_book(book)
    @books << book 
  end

    def add_users
    @users << user  
  end
end
# passes in two argument, the user checking out the book, and the book being checked out.
  def checkout_book (user, book)
    if user.can_check_out_books? && book.status == "Checked In"
      book.status = "Checked Out"
      book.due_date = "Book due in 1 week" # dummy message
      book.renter = user.name

      user.add_book(book)
    else
      puts "Cannot check out #{book.title}"
    end
  end

# takes in book as parameter and pushes in users to my users array

  def checkin_book(user, book)
    book.status = "Checked In"
    book.due_date = nil
    book.renter = nil

    user.books_rented.delete(book)
  end
end

#   def add_users
#     @users << user  
#   end
# end

# b = Book.new ("lord of the rings")
# u1 = User.new("jesse"
# u2 = User.new("julia")
# library = Library.new
# library.add_book(b)
# library.add_users(u1)

# library.checkout_book(u1, b)