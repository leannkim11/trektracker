class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update, :destroy]
  before_action :authorized?, unless: [:new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in_user(@user.id)
      redirect_to trips_path
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update
    @user.update(user_params)
    if @user.save
      redirect_to @user
    else
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private
  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :username, :password)
  end

end
