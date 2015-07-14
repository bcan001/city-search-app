class CitiesController < ApplicationController
	include CitiesHelper

	def search
		@search = ""
	end
	def show
		# binding.pry
		@city = params[:city_name]

		if params[:city_name] == nil
			@city = params[:format]
		end

		@weather = get_weather(@city)
		@events = get_events(@city)
		@fave_city = ''
	end
	def about
	end
	def profile
		@new_city = params[:format]

		# 
		@cities = current_user.cities
	end

	def save_city
		@fave_city = params[:fave_city]

		# 
		City.create(name: @fave_city, user_id: current_user.id)

		redirect_to profile_path(@fave_city)
	end

end
