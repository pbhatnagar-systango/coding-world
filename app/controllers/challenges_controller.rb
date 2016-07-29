class ChallengesController < ApplicationController
	def new
    @challenge = Challenge.new
	end
	def create
  		@challenge = Challenge.new(challenge_params)
  		@challenge.save
  		redirect_to @challenge
	end
  	def show
    	@challenge = Challenge.find(params[:id])
  	end
    def challengeanswer
     @challenge = Challenge.find(params[:id])
    end
     def challengeslist
          @challenges=Challenge.all
      end
	private
  		def challenge_params
    	params.require(:challenge).permit(:title,:question,:qtype,:level)
  		end
     
end
