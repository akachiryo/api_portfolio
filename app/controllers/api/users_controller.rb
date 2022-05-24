class Api::UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    user = User.new(user_params)
    user.save!
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :introduction, :avatar)
  end
end
