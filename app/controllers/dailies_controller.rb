class DailiesController < ApplicationController
  before_action :signed_in_user
  
  def new
    @daily=Daily.new
  end
  
  def create
    @daily = Daily.new(daily_params)
    @daily.company_name = current_user.company_name
    if @daily.save
      flash[:success]="daily created"
      redirect_to "/users/#{current_user.id}"
    else
      render root_url
    end  
  end
  
  def edit
    Daily.find(params[:id])
  end
  
  def update
    @daily=Daily.find(params[:id])
    if @daily.update_attributes(params.require(:daily).permit(:obsolete))
      flash[:success] = "daily updated"
      redirect_to current_user
    else
      render 'edit'
    end  
  end
  
  def index
    @dailies = Daily.where(:company_name == @current_user.company_name).all
  end
  
  def destroy
    @daily.obsolete = true
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Micropost was successfully turned obsolete.' }
      format.json { head :no_content }
    end
  end
  
  private
  
    def daily_params
      params.require(:daily).permit(:date,:account_name,:glosa,:exchange,:debe,:haber,:tran_type,:obsolete)
    end
end