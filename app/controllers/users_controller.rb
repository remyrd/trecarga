class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update]
  before_action :correct_user, only: [:edit, :update]
  
  
  def new
  	@user = User.new
	end

	def show
		@user = User.find(params[:id])
	end
  
  def index
    @users = User.where(:company_name == @current_user.company_name).all
  end
  
	def create
		@user = User.new(user_params)
		if @user.save
		  sign_in @user
		  flash[:success] = "Bienvenido #{@user.name}"
			redirect_to @user
		else 
			render 'new'
		end
	end

  def edit
    User.find(params[:id])
  end
	
	def update
	  @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
	end
	private
		def user_params
			params.require(:user).permit(:name, :email, :company_name, :password, :password_confirmation)
		end
		
		# Before filters
    
    def correct_user
      @user=User.find(params[:id])
      redirect_to root_path unless current_user?(@user)
    end
end
