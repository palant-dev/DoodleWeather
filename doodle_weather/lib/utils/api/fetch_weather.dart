import 'dart:convert';
import 'package:doodle_weather/models/api_response_related/weather_data_current.dart';
import 'package:doodle_weather/models/api_response_related/weather_data_daily.dart';
import 'package:doodle_weather/models/api_response_related/weather_data_hourly.dart';
import 'package:doodle_weather/models/weather_data_bundle.dart';
import 'package:doodle_weather/utils/api_url.dart';
import 'package:http/http.dart' as http;

/// This processes weather data from an API response.
///
/// This method makes an HTTP request to fetch weather data based on the provided
/// latitude (lat) and longitude (lon).
/// 
/// Throws an [Exception] if any errors occur during the process.
class FetchWeatherAPI {
  WeatherDataBundle? weatherData;

  Future<WeatherDataBundle> processData(lat, lon) async {
    try {
      // Make an HTTP GET request to the API endpoint
      var response = await http.get(Uri.parse(apiURL(lat, lon)));
      
      if (response.statusCode == 200) {
        // If the request is successful (status code 200), parse the JSON response
        var jsonString = jsonDecode(response.body);
        // Create a new WeatherData object using the parsed JSON data
        weatherData = WeatherDataBundle(
          WeatherDataCurrent.fromJson(jsonString), 
          WeatherDataHourly.fromJson(jsonString),
          WeatherDataDaily.fromJson(jsonString)
        );

        return weatherData!;
      } else {
        // If the request is not successful, throw an exception with an error message
        throw Exception('Failed to fetch weather data: ${response.statusCode}');
      }
    } catch (error) {
      // Catch any errors that occur during the process and throw a descriptive exception
      throw Exception('Error fetching weather data: $error');
    }
  }
}