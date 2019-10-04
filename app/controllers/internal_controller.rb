class InternalController < ApplicationController
  before_action :authorize, :change_user_password

end
