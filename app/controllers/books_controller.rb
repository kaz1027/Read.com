class BooksController < ApplicationController
  
  def index
  end

  def new
    @book = Book.new
  end

  def next
    @book = Book.new(book_params)
    render :new if @book.invalid?
  end

  def create
    @book = Book.new(create_book_params)
    if @book.save
      render 'index'
    else
      render 'new'
    end
  end

  def show
    @book = Book.includes(:user).order("created_at DESC")
  end

  private
  def book_params
    params.require(:book).permit(:title, :genre_id).merge(user_id: current_user.id)
  end

  def create_book_params
    params.require(:book).permit(:title, :genre_id, :output_tweets, :derection).merge(user_id: current_user.id)
  end

end
