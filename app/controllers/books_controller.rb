class BooksController < ApplicationController
  def top
  end

  def index
  end

  def show
  end

  def new
  		@book =Book.new
  end

  def create
  	book = Book.new(book_paramas)
  	book.save
  	redirect_to books_path
  end

  def edit
  end

  	private
  	def book_params
  		params.require(:book).permit(:Title, :Body)
end
end

