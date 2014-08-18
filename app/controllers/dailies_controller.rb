class DailiesController < ApplicationController
  before_action :signed_in_user
  
  def new
    @daily=Daily.new
  end
  
  def create
    @daily = Daily.new(daily_params)
    @daily.company_name = current_user.company_name
    @daily.obsolete = false
    @daily.date = Time.now
    if @daily.save
      flash[:success]="daily created"
      redirect_to "/users/#{current_user.id}"
    else
      render root_url
    end  
  end
  
  def edit
    @daily=Daily.find(params[:id])
  end
  
  def update
    @daily=Daily.find(params[:id])
    if @daily.update_attributes(params.require(:daily).permit(:obsolete))
      flash[:success] = "daily updated"
      redirect_to dailies_path
    else
      render 'edit'
    end  
  end
  
  def index
    @dailies = Daily.where(company_name: @current_user.company_name).all
  end
  
  def dates_index
  	set_daily
  	@dailies = Daily.where(company_name: @current_user.company_name, date: @daily.date).all
  end
  
  def accounts_index
  	set_daily
  	@dailies = Daily.where(company_name: @current_user.company_name, account_name: @daily.account_name).all
  end
  
  def glosas_index
  	set_daily
  	@dailies = Daily.where(company_name: @current_user.company_name, glosa: @daily.glosa).all
  end
  
  def exchanges_index
  	set_daily
  	@dailies = Daily.where(company_name: @current_user.company_name, exchange: @daily.exchange).all
  end
  
  def transactions_index
  	set_daily
  	@dailies = Daily.where(company_name: @current_user.company_name, tran_type: @daily.tran_type).all
  end
  
  private
  
  	def set_daily
  		@daily = Daily.find(params[:id])
  	end
  	
    def daily_params
      params.require(:daily).permit(:date,:account_name,:glosa,:exchange,:debe,:haber,:tran_type,:obsolete)
    end
    
end