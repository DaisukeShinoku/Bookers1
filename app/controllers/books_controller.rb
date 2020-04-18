class BooksController < ApplicationController
  def new
  	@book = Book.new
  	@books = Book.all
  end

  def create
  	book = Book.new(book_params)
  	book.save
  	redirect_to "/books"
  end

  def show
  	@book = Book.find_by(params[:id])
  end



private
  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
