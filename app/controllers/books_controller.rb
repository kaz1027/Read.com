class BooksController < ApplicationController
  
  def index
  end

  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "保存されました"
      redirect_to user_path(@current_user.id)
    else
      render 'new'
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to user_path(@current_user.id)
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.user_id == current_user.id
      @book.destroy
      redirect_to user_path(@current_user.id)
    end
  end

  def new_guest
    user = User.find_or_create_by(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.nickname = "ゲストユーザー"
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
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
