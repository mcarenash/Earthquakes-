class FavoritesController < ApplicationController
	 before_action :authenticate_user!
	def index
		favorites = Favorite.all
		render json: favorites
	end

	def new 
	end

	def create
		# if earthquake with eqid exists, take its id and create a new favorite with that earthquake's id
		# if it does not exist, use the eqid to query the api and create a new earthquake, then store the favorite with that id 

		favorite = Favorite.new(user_id: params[:user_id], earthquake_id: params[:earthquake_id])
		if favorite.save
			render json: favorite
		else
			render json: favorite.errors.full_messages
		end
	end

	def show
		# @favorite = Favorite.find(params[:id])
	end
	
	private

		# def favorite_params
		# 	params.require(:favorite).permit(
		# 		:user_id, :earthquake_id
		# 		)
		# end
	end

# users#show
# @earthquakes = current_user.earthquakes
