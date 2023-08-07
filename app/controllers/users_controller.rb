class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

  def search_by_name
    @user = User.where("LOWER(name) LIKE ?", "%#{params[:name]}%")
    render json: @user
  end
end
