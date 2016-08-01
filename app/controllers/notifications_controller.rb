class NotificationsController < ApplicationController
	def index
	end
	def new 
		@notification = Notification.new
	end
	def create
		@notification = Notification.new(notification_params)
  		@notification.save
  		redirect_to @notification
	end
	def show
    	@notification = Notification.find(params[:id])
  	end
  	def notificationlist
    	@notifications=Notification.all
    	# respond_to do |format|
  			#   format.js { render :approve_request }
  		# end
  	end
  	def approve_request
  		@notification=Notification.where(id:params[:notification_id]).take
  		@notification.status="approved"
  		@notification.save
  	end
  	private
  	def notification_params
    	params.require(:notification).permit(:title,:text,:domain,:status,:user_id)
  	end
end