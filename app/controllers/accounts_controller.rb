class AccountsController < ApplicationController
  before_action :signed_in_user
  
  def new
    @account=Account.new
  end
  
  def create
    @account=Account.new(account_params)
    if @account.save
      flash[:success]= "account succesfully created"
      redirect_to "users/#{current_user.id}"
    else
      redirect_to root_url
    end
  end
  
  def edit
    Account.find(params[:id])
  end
  
  def update
    Account.find(params[:id])
    if @account.update_attributes(account_params)
      flash[:success] = "Account updated"
      redirect_to current_user
    else
      render 'edit'
    end
  end
  
  private
    def account_params
      params.require(:account).permit(:group_id, :description)
    end
end