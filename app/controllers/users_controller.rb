class UsersController < ApplicationController
	 	
 
  def show	 #FOR TESTING ONLY. DELETE LATER
  	@user = User.find(params[:id])	
  end

	def new
  	@user = User.new
  end

	def create
		@user = User.new(params[:user])
		if @user.save 
			sign_in @user
			flash[:success] = "Welcome to The Productivenator!"
			redirect_to @user
		else
			render 'new'
		end
	end
end
