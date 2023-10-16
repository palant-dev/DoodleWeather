import 'package:doodle_weather/models/api_response_related/daily_weather_model.dart';

/// This represents the daily weather data instance for getting the api response.
class WeatherDataDaily {
  List<DailyWeatherModel> daily; 
  WeatherDataDaily({required this.daily});

  /// Constructs an instance of [WeatherDataDaily] from a JSON [Map].
  factory WeatherDataDaily.fromJson(Map<String, dynamic> json) => WeatherDataDaily(
    daily: List<DailyWeatherModel>.from(json['daily'].map((e) => DailyWeatherModel.fromJson(e) 
    )));
}



