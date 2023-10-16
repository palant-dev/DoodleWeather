import 'package:doodle_weather/utils/api/api_key.dart';

/// This function generates a URL string for making API requests to OpenWeatherMap.
///
/// Parameters:
///   - [lat]: The latitude coordinate.
///   - [lon]: The longitude coordinate.
///
/// Returns:
///   A formatted URL string for retrieving weather data.
String apiURL(double lat, double lon) {
  String url = "https://api.openweathermap.org/data/3.0/onecall?"
               "lat=$lat&lon=$lon&exclude=minutely&appid=$apiKey&units=metric";
  return url;
}