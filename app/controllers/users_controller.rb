class UsersController < ApplicationController
  def create
    #binding.pry
    User.create(user_params)
    session[:user_id] = @user.id
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
