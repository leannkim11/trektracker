class ApplicationController < ActionController::Base

  private

  def log_in_user(user_id)
    session[:user_id] = user_id
  end

  def logged_in_user_id
    session[:user_id]
  end

  def get_logged_in_user
    @logged_in_user =  logged_in_user_id ?  User.find(logged_in_user_id) : "no user"
  end

  def authorized?
      redirect_to new_session_path unless !!get_logged_in_user
  end
end
