class UsersController < ApplicationController
	def admin
  end
  def userslist
   	@users = User.all
  end
    def show
   	@user = User.find(params[:id])
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy 
    redirect_to userslist_path
  end
  def userprofile
    @user = User.find(params[:id])
  end
  
end