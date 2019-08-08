class UsersController < ApplicationController
  def create
    #binding.pry
    User.create(user_params)
    redirect_to 'sessions#create'
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
