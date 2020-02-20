require "forecast_io"

# configure the Dark Sky API with your API key
ForecastIO.api_key = "aed7bf60eae0b7e746870f1d1d664482"

# do the heavy lifting, use Global Hub lat/long
forecast = ForecastIO.forecast(42.0574063,-87.6722787).to_hash
puts forecast
# pp = pretty print
# use instead of `puts` to make reading a hash a lot easier
# e.g. `pp forecast

current_temp =  forecast["currently"]["temperature"]
current_weather = forecast["currently"]["summary"]

# Example output:
#
puts "In Chicago, it is currently #{current_temp} degress and #{current_weather}"
puts "-------------------------"
puts "Extended forecast"

puts forecast.keys
puts forecast["daily"]["data"]

for i in forecast["daily"]["data"]
    # i = forecast["daily"]["data"][0, or 1, or 2, etc.], by definition
    puts "A high temperature of #{i["temperatureHigh"]} and #{i["summary"]}"
end
# A high temperature of 36.47 and Possible flurries in the afternoon."
# A high temperature of 33.98 and Mostly cloudy throughout the day.
# A high temperature of 33.94 and Possible light snow until evening.
# A high temperature of 32.73 and Mostly cloudy throughout the day.
# A high temperature of 32.51 and Partly cloudy throughout the day.
# A high temperature of 40.42 and Clear throughout the day.
# A high temperature of 23.21 and Overcast throughout the day.
# A high temperature of 29.12 and Clear throughout the day.