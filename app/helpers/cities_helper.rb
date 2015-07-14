module CitiesHelper
	require 'open-uri'
	require 'json'
	def get_weather(city_name)
		search_url = "http://api.openweathermap.org/data/2.5/weather?q={" + city_name + "}"
		result = JSON.parse(open(search_url).read)
		return result
	end

	def get_events(city_name, search_text)
		city_name.gsub!(' ','+')
		search_text.gsub!(' ','+')
		search_url = "http://api.eventful.com/json/events/search?&app_key=CgWRhR5CVwSNfXVs&location=" + city_name + "&date=Today&keywords=" + search_text
		result = JSON.parse(open(search_url).read)
		return result
	end

	def kelvin_to_faren(temp)
		temp = temp.to_i
		temp * 9/5 - 459
	end

end
