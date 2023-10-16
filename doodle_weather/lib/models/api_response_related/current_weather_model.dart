import 'package:doodle_weather/models/api_response_related/weather_model.dart';

/// This model represents the current weather conditions based on the API response of openweather.
/// 
/// [temp] is the current temperature in Celsius.
/// [humidity] is the humidity level as a percentage.
/// [clouds] is the cloud coverage percentage.
/// [uvIndex] is the UV index.
/// [feelsLike] is the "feels like" temperature in Celsius.
/// [windSpeed] is the wind speed in meters per second.
/// [weather] is the list of weather conditions.
class CurrentWeatherModel {
  int? temp;
  int? humidity;
  int? clouds;
  double? uvIndex;
  double? feelsLike;
  double? windSpeed;
  List<WeatherModel>? weather;

  CurrentWeatherModel({
    this.temp,
    this.humidity,
    this.clouds,
    this.uvIndex,
    this.feelsLike,
    this.windSpeed,
    this.weather,
  });

  /// Constructs an instance of [CurrentWeatherModel] from a JSON [Map].
  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) => CurrentWeatherModel(
    temp: (json['temp'] as num?)?.round(),
    feelsLike: (json['feels_like'] as num?)?.toDouble(),
    uvIndex: (json['uvi'] as num?)?.toDouble(),
    humidity: json['humidity'] as int?,
    clouds: json['clouds'] as int?,
    windSpeed: (json['wind_speed'] as num?)?.toDouble(),
    weather: (json['weather'] as List<dynamic>?)
      ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  );

  /// Converts this [CurrentWeatherModel] instance to a JSON [Map].
  Map<String, dynamic> toJson() => {
    'temp': temp,
    'feels_like': feelsLike,
    'uvi': uvIndex,
    'humidity': humidity,
    'clouds': clouds,
    'wind_speed': windSpeed,
    'weather': weather?.map((e) => e.toJson()).toList(),
  };
}