class WelcomeController < ApplicationController
  def index
  	if current_user.role === "admin"
  		redirect_to user_path
  	end
  end

  def user
   	
   end 
end
