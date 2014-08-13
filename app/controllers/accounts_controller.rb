class AccountsController < ApplicationController
  before_action :signed_in_user
  
  def new
    @account=Account.new
  end
  
  def create
    @account=Account.new(account_params)
    @account.company_name = current_user.company_name
    if @account.save
      flash[:success]= "account succesfully created"
      redirect_to "/users/#{current_user.id}"
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
  
  def index
    @accounts = Account.where(:company_name == @current_user.company_name).all
  end
  
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    def account_params
      params.require(:account).permit(:group_name, :name, :description)
    end
end