import 'package:doodle_weather/models/api_response_related/temp_model.dart';
import 'package:doodle_weather/models/api_response_related/weather_model.dart';

/// This model represents the daily weather data.
///
/// [dayTime] is the timestamp for this daily data (Unix timestamp).
/// [temp] is the temperature data for this daily data.
/// [weather] is the list of weather conditions for this daily data.
class DailyWeatherModel {
  int? dayTime;
  TempModel? temp;
  List<WeatherModel>? weather;

  DailyWeatherModel({
    this.dayTime, 
    this.temp,  
    this.weather, 
  });

  /// Constructs an instance of [DailyWeatherModel] from a JSON [Map].
  factory DailyWeatherModel.fromJson(Map<String, dynamic> json) => DailyWeatherModel(
    dayTime: json['dt'] as int?,
    temp: json['temp'] == null
      ? null
      : TempModel.fromJson(json['temp'] as Map<String, dynamic>),
    weather: (json['weather'] as List<dynamic>?)
      ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  );

  /// Converts this [DailyWeatherModel] instance to a JSON [Map].
  Map<String, dynamic> toJson() => {
    'dt': dayTime,
    'temp': temp?.toJson(),
    'weather': weather?.map((e) => e.toJson()).toList(),
  };
}