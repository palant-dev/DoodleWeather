/// This model represents the temperature data for a specific time period.
///
/// [day] is the daytime temperature in Celsius.
/// [min] is the minimum temperature in Celsius.
/// [max] is the maximum temperature in Celsius.
/// [night] is the nighttime temperature in Celsius.
/// [eve] is the evening temperature in Celsius.
/// [morn] is the morning temperature in Celsius.
class TempModel {
	double? day;
	int? min;
	int? max;
	double? night;
	double? eve;
	double? morn;

	TempModel({this.day, this.min, this.max, this.night, this.eve, this.morn});

	factory TempModel.fromJson(Map<String, dynamic> json) => TempModel(
				day: (json['day'] as num?)?.toDouble(),
				min: (json['min'] as num?)?.round(),
				max: (json['max'] as num?)?.round(),
				night: (json['night'] as num?)?.toDouble(),
				eve: (json['eve'] as num?)?.toDouble(),
				morn: (json['morn'] as num?)?.toDouble(),
			);
  /// Converts this [TempModel] instance to a JSON [Map].
	Map<String, dynamic> toJson() => {
				'day': day,
				'min': min,
				'max': max,
				'night': night,
				'eve': eve,
				'morn': morn,
			};
}