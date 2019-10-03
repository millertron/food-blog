class UserController < InternalController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if (@user.status_registered?)
      @user.status_active!
      puts params[:user][:password]
      @user.password = params[:user][:password]
      @user.save
    end
    redirect_to root_url
  end

end
