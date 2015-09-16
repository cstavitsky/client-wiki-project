class MembershipsController < ApplicationController


  def index
  end

  def create
    # p current_user
    # session[:user_id] = 2
    # p session[:user_id]
    # # p "USER ID:" + session[:user_id]
    @group = Group.find_by(id: params[:group_id])
    @membership = current_user.memberships.new(group_id: params[:group_id], user_id: current_user.id, access_level: "non-member")
    if @membership.save
      flash[:warning] = "Thank you for requesting membership to #{@group.name}. Your membership is pending approval."
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
