class GroupsController < ApplicationController
  before_action :signed_in_user
  
  def new
    @group=Group.new
  end
  
  def create
    @group=Group.new(group_params)
    @group.company_name = current_user.company_name
    @group.set_company
    if @group.save
      flash[:success]= "group succesfully created"
      redirect_to "/users/#{current_user.id}"
    else
      redirect_to root_url
    end
  end
  
  def edit
    @group=Group.find(params[:id])
  end
  
  def update
    @group=Group.find(params[:id])
    @accounts = Account.where(group_name: @group.name, company_name: @current_user.company_name)
    if @group.update_attributes(group_params)
      @accounts.each do |account|
      	account.update(group_name: @group.name)
      end
      flash[:success] = "group updated"
      redirect_to groups_path
    else
      render 'edit'
    end
  end
  
  def index
    @groups = Group.where(company_name: @current_user.company_name).all
  end
  
  def destroy
    @group=Group.find(params[:id])
    @accounts = Account.where(group_name: @group.name, company_name: @current_user.company_name)
    @accounts.each do |account|
    	@dailies = Daily.where(account_name: account.name, company_name: @current_user.company_name)
    	@dailies.each do |daily|
    		daily.update(obsolete: true)
    	end
    	account.destroy
    end
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
    
  end
  
  private
    def group_params
      params.require(:group).permit(:name)
    end
end