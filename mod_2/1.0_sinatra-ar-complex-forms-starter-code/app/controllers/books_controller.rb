
class BooksController < ApplicationController
  get '/books' do
    # binding.pry
    
    @books = Book.all
    
    erb :'/books/index.html'
  end

  get '/books/:id' do
    # binding.pry

    @book = Book.find(params[:id])
    
    erb :'/books/show.html'
  end
end
