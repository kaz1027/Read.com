class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @books = current_user.books
  end
end
