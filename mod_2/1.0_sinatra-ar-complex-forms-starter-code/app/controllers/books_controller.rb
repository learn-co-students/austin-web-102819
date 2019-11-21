
class BooksController < ApplicationController
  get '/books' do
    # binding.pry
    
    @books = Book.all
    
    erb :'/books/index.html'
  end
  
  get '/books/new' do
    # puts "=======NEW============="
    # binding.pry
    @authors = Author.all

    erb :"/books/new.html"
  end

  get '/books/:id' do
    # binding.pry

    @book = Book.find(params[:id])
    
    erb :'/books/show.html'
  end

  post "/books" do
    # CRUD operation: DB
    # puts "=====POST NEW!!====="

    new_book = Book.create(
      title: params[:book][:title],
      snippet: params[:book][:snippet],
      author_id: params[:book][:author_id]
    )

    redirect to "/books/#{new_book.id}"
    # erb :'/books/index.html'   
  end
end
