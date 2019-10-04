class ApplicationController < ActionController::Base
  helper_method :current_user
  
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def authorize
    redirect_to '/login' unless current_user
  end

  def change_user_password
    if current_user && current_user.status_registered?
      redirect_to controller: :user, action: :change_password, id: current_user.id
    end
  end
end
