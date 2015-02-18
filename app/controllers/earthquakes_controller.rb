class EarthquakesController < ApplicationController
	# before_action :earthquake_params, only: :create

	def index
		# earthquakes = Earthquake.all
		# render json: earthquakes
	end

	def new 
	end

	def create
		earthquake = Earthquake.new(title: params[:title], time: params[:time], eqid: params[:eqid], latitude: params[:latitude], longitude: params[:longitude], magnitude: params[:magnitude], place: params[:place])
		# binding.pry
		if earthquake.save
			render json: earthquake
		else
			render json: earthquake.errors.full_messages
		end
	end

	def show
		@earthquake = Earthquake.find(params[:id])
	end

	
	private

		# def earthquake_params
		# 	params.permit(:time)
		# end

end
