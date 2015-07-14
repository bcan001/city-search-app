module CitiesHelper
	require 'open-uri'
	require 'json'
	def get_weather(city_name)
		search_url = "http://api.openweathermap.org/data/2.5/weather?q={" + city_name + "}"
		result = JSON.parse(open(search_url).read)
		return result
	end
end
