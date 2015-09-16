class UsersController < ApplicationController
  before_action :current_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
       @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to @user, notice: "User successfully created!"
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
        redirect_to root_path, notice: "Update successful"
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
