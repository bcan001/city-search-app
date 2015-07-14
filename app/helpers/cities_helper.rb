module CitiesHelper
	require 'open-uri'
	require 'json'
	def get_weather(city_name)
		search_url = "http://api.openweathermap.org/data/2.5/weather?q={" + city_name + "}"
		result = JSON.parse(open(search_url).read)
		return result
	end

	def get_events(city_name)
		# city_name = city_name.split(" ")

		search_url = "http://api.eventful.com/json/events/search?&app_key=CgWRhR5CVwSNfXVs&location=" + city_name + "&date=Today"
		result = JSON.parse(open(search_url).read)
		return result
	end
end
