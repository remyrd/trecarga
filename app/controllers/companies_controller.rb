class CompaniesController < ApplicationController

  def new
    @company = Company.new
  end

  def create
    if current_user.name == 'admin'
      @company = Company.new(company_params)
      if @company.save
        redirect_to current_user
      else
        render 'new'
      end
    end
  end
  
  private
    def company_params
      params.require(:company).permit(:name, :typo, :address, :city, :country, :phone, :cellphone, :email)
    end
    
  
end
