class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = [] # Initialize rentals as an empty array
  end

  def add_rental(person, date)
    rental = Rental.new(date, person, self)
    @rentals.push(rental) unless @rentals.include?(rental)
  end
end
