class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @books = current_user.books.order("created_at DESC")
  end
end
