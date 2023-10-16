import 'package:doodle_weather/models/api_response_related/weather_data_current.dart';
import 'package:flutter/cupertino.dart';

/// This Widget displays temperature of today and visual rerpresentation of the weather:
class TemperatureSkyWidget extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;

  const TemperatureSkyWidget({super.key, required this.weatherDataCurrent});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "${weatherDataCurrent.current.temp!.toInt()}°",
                style: const TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 56,
                  color: CupertinoColors.black
                )
              ),
            ]
          )
        ),
        const SizedBox(
          height: 8,
        ),
        Image.asset(
          "assets/weather/${weatherDataCurrent.current.weather![0].icon}.gif",
          height: 150,
          width: 150,
        ),
        const SizedBox(
          height: 8,
        ),
        RichText(
          text: TextSpan(
            text: "${weatherDataCurrent.current.weather![0].description}".toUpperCase(),
                style: const TextStyle(
                  fontSize: 22,
                  color: CupertinoColors.systemGrey,
                )
          )
        )
      ],
    );
  }
}
