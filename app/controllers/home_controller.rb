class HomeController < ApplicationController
  before_action :authorize

  def index
    if current_user.status_registered?
      redirect_to controller: :user, action: :edit, id: current_user.id 
    end
  end
end
