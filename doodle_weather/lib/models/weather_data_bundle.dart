import 'package:doodle_weather/models/api_response_related/weather_data_current.dart';
import 'package:doodle_weather/models/api_response_related/weather_data_daily.dart';
import 'package:doodle_weather/models/api_response_related/weather_data_hourly.dart';

/// This bundle of weather data includs current, hourly, and daily forecasts.
/// 
/// [current] is the current weather data.
/// [hourly] is the hourly weather data.
/// [daily] is the daily weather data.
class WeatherDataBundle {
  final WeatherDataCurrent? current;
  final WeatherDataHourly? hourly;
  final WeatherDataDaily? daily;

  WeatherDataBundle([this.current, this.hourly, this.daily]);

  /// Fetches the current weather data.
  ///
  /// Returns [WeatherDataCurrent] if available, otherwise throws an exception.
  WeatherDataCurrent fetchCurrentWeather() {
    if (current != null) {
      return current!;
    } else {
      throw Exception('Current weather data is null');
    }
  }

  /// Fetches the hourly weather data.
  ///
  /// Returns [WeatherDataHourly] if available, otherwise throws an exception.
  WeatherDataHourly fetchHourlyWeather() {
    if (hourly != null) {
      return hourly!;
    } else {
      throw Exception('Hourly weather data is null');
    }
  }

  /// Fetches the daily weather data.
  ///
  /// Returns [WeatherDataDaily] if available, otherwise throws an exception.
  WeatherDataDaily fetchDailyWeather() {
    if (daily != null) {
      return daily!;
    } else {
      throw Exception('Daily weather data is null');
    }
  }
}