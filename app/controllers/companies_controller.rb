class CompaniesController < ApplicationController

  def new
    @company = Company.new
  end

  def create
    admin = User.find_by(name: 'admin')
    if @current_user == admin
      @company = Company.new(compnay_params)
      if @company.save
        redirect_to @current_user
      else
        render 'new'
      end
    end
  end
  
end
