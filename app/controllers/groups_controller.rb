class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def create
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

end
