#!/usr/bin/env ruby
require_relative 'app'

# Define the main entry point for the console app
def main(books, people)
  puts 'Welcome to the Library Console App!'

  loop do
    puts "\nPlease choose an option:"
    puts '1. List all books'
    puts '2. List all people'
    puts '3. Create a person (teacher or student)'
    puts '4. Create a book'
    puts '5. Create a rental'
    puts '6. List all rentals for a given person id'
    puts '7. Quit the app'

    choice = gets.chomp.to_i

    case choice
    when 1
      list_all_books(books)
    when 2
      list_all_people(people)
    when 3
      create_person(people)
    when 4
      create_book(books)
    when 5
      create_rental(books, people)
    when 6
      list_rentals_for_person(people)
    when 7
      puts 'Exiting the app. Goodbye!'
      break
    else
      puts 'Invalid choice. Please try again.'
    end
  end
end

main
