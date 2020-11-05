class BooksController < ApplicationController
  
  def index
  end

  def new
    @book = Book.new
  end

  # def next
  #   session[:title] = book_params[:title]
  #   session[:author] = book_params[:author]
  #   session[:genre_id] = book_params[:genre_id]
  #   @book = Book.new
  # end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "表示させたいメッセージ"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @book = Book.includes(:user).order("created_at DESC")
  end

  private
  def book_params
    params.require(:book).permit(
    :title, 
    :author, 
    :genre_id, 
    :output_tweets1, 
    :output_tweets2,
    :output_tweets3,
    :output_tweets4,
    :output_tweets5,
    :output_tweets6,
    :output_tweets7,
    :output_tweets8,
    :output_tweets9,
    :output_tweets10,
    :output_tweets11,
    :output_tweets12,
    :output_tweets13,
    :output_tweets14,
    :output_tweets15,
    :output_tweets16,
    :output_tweets17,
    :output_tweets18,
    :output_tweets19,
    :output_tweets20,
    :derection
  ).merge(user_id: current_user.id)
  end

end
