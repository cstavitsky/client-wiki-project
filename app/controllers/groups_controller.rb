class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      flash[:success] = "Your group
      was created successfully."
      redirect_to group_path(@group)
    else
      flash[:error] = "Invalid entry"
      render 'new'
    end
  end

  def new
  end

  def edit
  end

  def show
    @membership = Membership.new
    @group = Group.find_by(id: params[:id])
  end

  def update
  end

  def destroy
  end

  def group_params
    params.require(:group).permit(:name)
  end
end
