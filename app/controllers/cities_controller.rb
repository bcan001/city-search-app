class CitiesController < ApplicationController
	include CitiesHelper

	def search
		@search = ""
	end
	def show
		# binding.pry
		@city = params[:city_name]

		@weather = get_weather(@city)

	end
end
