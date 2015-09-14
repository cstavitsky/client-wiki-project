class SessionsController < ActionController::Base
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      render 'welcome/index'
    else
      render 'new'
    end
  end

  def destroy
  end

end
