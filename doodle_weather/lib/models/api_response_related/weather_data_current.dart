import 'package:doodle_weather/models/api_response_related/current_weather_model.dart';

/// This represents the current weather data instance for getting the api response.
class WeatherDataCurrent {
  final CurrentWeatherModel current;

  WeatherDataCurrent({required this.current});

  /// Constructs an instance of [WeatherDataCurrent] from a JSON [Map].
  factory WeatherDataCurrent.fromJson(Map<String, dynamic> json) => WeatherDataCurrent(
    current: CurrentWeatherModel.fromJson(json['current']),
  );
}

