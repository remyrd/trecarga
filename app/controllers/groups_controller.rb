class GroupsController < ApplicationController
  before_action :signed_in_user
  
  def new
    @group=Group.new
  end
  
  def create
    @group=Group.new(group_params)
    if @group.save
      flash[:success]= "group succesfully created"
      redirect_to "/users/#{current_user.id}"
    else
      redirect_to root_url
    end
  end
  
  def edit
    Group.find(params[:id])
  end
  
  def update
    Group.find(params[:id])
    if @group.update_attributes(group_params)
      flash[:success] = "group updated"
      redirect_to current_user
    else
      render 'edit'
    end
  end
  
  private
    def group_params
      params.require(:group).permit(:description)
    end
end