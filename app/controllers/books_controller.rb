class BooksController < ApplicationController
  
  def index
  end

  def new
    @books = Book.new
    # @genre = Genre.new
  end

  def create
    @books = Book.create(book_params)
  end

  def show
  end

  private
  def book_params
    params.require(:book).permit(:book_name, :image, :genre_id, :derection).merge(user_id: current_user.id)
  end
end
