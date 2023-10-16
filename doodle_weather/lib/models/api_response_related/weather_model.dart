
/// This model represents weather conditions.
/// 
/// [id] is the weather condition ID.
/// [main] is the main weather condition.
/// [description] is a detailed description of the weather condition.
/// [icon] is the icon representing the weather condition.
class WeatherModel {
	int? id;
	String? main;
	String? description;
	String? icon;
	
	WeatherModel({ this.id, this.main, this.description, this.icon});

  /// Constructs an instance of [WeatherModel] from a JSON [Map].
	factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
				id: json['id'] as int?,
				main: json['main'] as String?,
				description: json['description'] as String?,
				icon: json['icon'] as String?,
			);
  
  /// Converts this [WeatherModel] instance to a JSON [Map].
	Map<String, dynamic> toJson() => {
				'id': id,
				'main': main,
				'description': description,
				'icon': icon,
			};
}