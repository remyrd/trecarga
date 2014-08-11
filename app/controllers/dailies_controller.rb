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
    
  end
  
  private
  
    def daily_params
      params.require(:daily).permit(:date,:account_id,:glosa,:exchange,:debe,:haber,:tran_type,:obsolete)
    end
end