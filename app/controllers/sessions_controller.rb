class SessionsController < ApplicationController
skip_before_action :authorized?, only: [:new, :create]

  def new
    #code
  end

  def create
    @user = User.find_by(username: user_params[:username])
    if @user && @user.authenticate(user_params[:password])
      log_in_user(@user.id)
      redirect_to trips_path
    else
      @error = "Those credentials do not match anything we have in the database"
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to new_session_path
  end

private
  def user_params
    params.require(:session).permit(:username, :password)
  end
end
