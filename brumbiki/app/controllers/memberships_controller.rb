class MembershipsController < ApplicationController


  def index
  end

  def create
    membership = current_user.memberships.create(group_id: membership_params)
    redirect_to membership_path(membership)
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

  def membership_params
    params.require(:membership).permit(:id)
  end

end
