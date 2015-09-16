class UsersController < ApplicationController
  before_action :current_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
       @user = User.new(user_params)
    if @user.save
      log_in(@user)
      flash[:success] = "Your account was successfully created!"
      redirect_to @user
    else
      render "new"
    end
  end

  def edit
  end

  def show
  end

  def update
    if current_user.update(user_params)
      flash[:success] = "You successfully updated your account!"
        redirect_to root_path
    else
      render "edit"
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :password, :email)
  end

end
