class AuthorsController < ApplicationController
  get '/authors' do
    # binding.pry
    @authors = Author.all
    erb :'/authors/index.html'
  end   
end
