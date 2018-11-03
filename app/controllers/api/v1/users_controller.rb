class Api::V1::UsersController < ApplicationController

#render all users
  def index
    @users = User.all
    render json: @users
  end

#create new user instance
  def create
    @new_user = User.create(user_params)
    render json: @new_user

  end

  private

  def user_params
    params.permit(:name)
  end

  def find_user
    @user = User.find(params[:id])
  end




end
