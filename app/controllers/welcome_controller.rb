class WelcomeController < ApplicationController
  def index
  	if current_user != nil
  		if current_user.role === "admin"
  			redirect_to admin_path
  		else
  			redirect_to user_path
  		end
  	end
  end
  def home
  end
end