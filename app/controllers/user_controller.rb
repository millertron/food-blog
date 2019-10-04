class UserController < InternalController
  skip_before_action :change_user_password, only: [:change_password, :update]
  before_action :set_user, only: [:show, :edit, :change_password, :update]

  def show
  end

  def edit
  end

  def change_password
  end

  def update
    if (@user.update(user_params) && @user.status_registered?)
      @user.status_active!
    end
    redirect_to @user, notice: 'Successfully updated user entry.'
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:display_name, :password)
  end

end
