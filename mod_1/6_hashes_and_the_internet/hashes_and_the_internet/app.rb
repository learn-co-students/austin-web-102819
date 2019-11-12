require 'rest-client'
require 'json'
require 'pry'

# use the RestClient gem to make a request to a server

# response = RestClient.get some resource

# parsed_response = parse that response in JSON format so that we can use input

# def parsed_response do 
#     do something with it
# end

GOOGLE_BOOKS_API_BASE_URL = "https://www.googleapis.com/books/v1/volumes?q="

def welcome
    puts "Welcome to the book searcher!"
end

# get input from the user in the form of search terms
def get_input
    puts "Please enter a search term(s)"
    input = gets.chomp
    puts "You've entered #{input}"
    input
end

# get user input, build url
def build_url(input)
    url = "#{GOOGLE_BOOKS_API_BASE_URL}#{input}"
    url
end

# make a request to the Google Books API (using those search terms)
def make_request(url)
    response = RestClient.get(url)
    parsed_response = JSON(response)["items"]
end

# parsed_response["items"][0]["volumeInfo"]["title"]
def get_books(books_array)
    books = books_array[0..10]
end

def collect_book_info(books_array)
    #make an array that holds book_hashes
    books_array.map do |book|
        {title: book["volumeInfo"]["title"], authors: book["volumeInfo"]["authors"]
        }
    end
    # iterate over the books_array
    #   def books_array.each do |book|
    #     Book.create(title: book[:title])
    #   end
    # .map returns an ARRAY, for each book object it iterates over, I will return a hash, with two key value pairs, title, which points to a string, authors which points to an array
end

def display_books(books_array)
    books_array.each do |book|
        puts "******************************"
        puts "Title: #{book[:title]}"
        if book[:authors]
            puts "Author(s): #{book[:authors]}"
        else 
            puts "Anonymous"
        end
    end
end


# get back the first ten books from the search
# display both the title and author of those books

def run
    welcome
    input = get_input
    url = build_url(input)
    books_array = make_request(url)
    books = get_books(books_array)
    final_book_array = collect_book_info(books)
    display_books(final_book_array)
    binding.pry
end

run


