class UsersController < ApplicationController
	before_action :authenticate_user!
	def show
		# users#show
	    
		# @earthquakes = current_user.earthquakes


	@user = User.find(params[:id])
	@earthquakes = @user.earthquakes
	end

end
