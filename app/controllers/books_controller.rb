class BooksController < ApplicationController
  def top
  end

  def index
  	#記事の取得
  	# @books = Book.all
  	@book = Book.new
  end

  def show
  	@book = Book.find(params[:id])
  end

  def new
  	#空のモデルをビューへ渡す
  		@book = Book.new
  end

  def create
  	book = Book.new(book_params)
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

