class Api::UsersController < ApplicationController

  def index
    @user = User.find(1)
    # render 'index', formats: json, handlers: 'jbuilder'
  end

  def create
    user = User.new(user_params)
    user.save!
    @users = User.all
  end

  def update
    @user = current_user
    if @user.update(user_update_params)
      @user.parse_base64(params[:user][:image])
      render json: @user, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :introduction, :avatar)
  end

  def user_update_params
    params.require(:user).permit(:introduction, :image)
  end
end
