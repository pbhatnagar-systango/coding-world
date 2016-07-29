class AnswersController < ApplicationController
	
	def index
	date = Date.today
    @challenge = Challenge.where(:created_at => (date.beginning_of_day..date.end_of_day),:qtype => "regular").take
	end

	def new
		@answer = Answer.new
	end
	def create

		@answer = Answer.new(answer_params)
  		@answer.save
  		redirect_to @answer
	end
  	def show

    	@answer = Answer.find(params[:id])
  	end
	private
  		def answer_params
    	params.require(:answer).permit(:ans,:challenge_id,:user_id)
  		end
end
