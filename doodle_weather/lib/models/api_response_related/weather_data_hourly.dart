import 'package:doodle_weather/models/api_response_related/hourly_weather_model.dart';

/// This represents the hourly weather data instance for getting the api response.
class WeatherDataHourly {
  List<HourlyWeatherModel> hourlyWeather; 
  WeatherDataHourly({required this.hourlyWeather});

  /// Constructs an instance of [WeatherDataHourly] from a JSON [Map].
  factory WeatherDataHourly.fromJson(Map<String, dynamic> json) => WeatherDataHourly(
    hourlyWeather: List<HourlyWeatherModel>.from(json['hourly'].map((e) => HourlyWeatherModel.fromJson(e) 
    )));
}

