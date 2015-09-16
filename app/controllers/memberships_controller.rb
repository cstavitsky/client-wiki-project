class MembershipsController < ApplicationController


  def index
  end

  def create
    # p current_user
    # session[:user_id] = 2
    # p session[:user_id]
    # # p "USER ID:" + session[:user_id]
    membership = current_user.memberships.new(group_id: params[:group_id])
    if membership.save
      redirect_to root_path
    else
      render 'groups/show'
    end
  end

  def new
    # @membership = Membership.new
  end

  def edit
  end

  def show
    render 'show'
  end

  def update
  end

  def destroy
  end

  private

  # def membership_params
  #   params.require(:membership).permit(:group_id)
  # end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
