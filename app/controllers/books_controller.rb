class BooksController < ApplicationController
  def top
  end

  def index
  	#記事の取得
  	@books = Book.all
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
  	redirect_to book_path(book.id)
  end

  def edit
  end

  def update
  end

 def destory
 end

  	private
  	def book_params
  		params.require(:book).permit(:title, :body)
end
end

