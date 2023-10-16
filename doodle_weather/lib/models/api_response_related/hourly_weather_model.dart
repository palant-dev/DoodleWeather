import 'package:doodle_weather/models/api_response_related/weather_model.dart';

/// This model can stores data related to the hourly weather predictions.
///
/// [dayTime] is the timestamp for this hourly data (Unix timestamp).
/// [temp] is the temperature for this hourly data in Celsius.
/// [weather] is the list of weather conditions for this hourly data.>
class HourlyWeatherModel {
	int? dayTime;
	int? temp;
	List<WeatherModel>? weather;

	HourlyWeatherModel({
		this.dayTime, 
		this.temp, 
		this.weather, 
	});

  /// Constructs an instance of [HourlyWeatherModel] from a JSON [Map].
	factory HourlyWeatherModel.fromJson(Map<String, dynamic> json) => HourlyWeatherModel(
				dayTime: json['dt'] as int?,
				temp: (json['temp'] as num?)?.round(),
				
				weather: (json['weather'] as List<dynamic>?)
						?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

  /// Converts this [HourlyWeatherModel] instance to a JSON [Map].
	Map<String, dynamic> toJson() => {
				'dt': dayTime,
				'temp': temp,
				'weather': weather?.map((e) => e.toJson()).toList(),
			};
}