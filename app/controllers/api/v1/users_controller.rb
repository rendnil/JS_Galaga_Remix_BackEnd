class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update]

  def index
    @users = User.all
    render json: @users
  end

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
