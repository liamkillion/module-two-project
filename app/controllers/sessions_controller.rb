class SessionsController<ApplicationController
  def create
    @user = User.find_by(email: params[:user][:email])
    if @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash.now[:notice] = "Logged in!"
      redirect_to user_path(@user)
    else
      flash.now[:notice] = "Bad login!"
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
