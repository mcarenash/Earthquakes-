class FavoritesController < ApplicationController
	# before_action :authenticate_user!
	def index
		favorites = Favorite.all
		render json: favorites
	end

	def new 
	end

	def create
		favorite = Favorite.new(user_id: params[:user_id], earthquake_id: params[:earthquake_id])
		if favorite.save
			render json: favorite
		else
			render json: favorite.errors.full_messages
		end
	end
	
	private

		# def favorite_params
		# 	params.require(:favorite).permit(
		# 		:user_id, :earthquake_id
		# 		)
		# end
	end

