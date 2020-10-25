class BooksController < ApplicationController
  
  def index
  end

  def new
    @books = Book.new
  end

  def create
    @books = Book.create(book_params)
  end

  def show
    @books = Book.includes(:user).order("created_at DESC")
  end

  private
  def book_params
    params.require(:book).permit(:title, :image, :genre_id, :derection).merge(user_id: current_user.id)
  end
end
