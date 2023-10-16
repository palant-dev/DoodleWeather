import 'package:flutter/cupertino.dart';
import 'package:doodle_weather/models/api_response_related/weather_data_current.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

/// This Widget displays comfort level information:
/// 
///  - Humidity: expressed in percentage
///  - Feels like: the perceived temperature
///  - UV Index: the actual UV reading
class ComfortLevel extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  const ComfortLevel({Key? key, required this.weatherDataCurrent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: Column(
            children: [
              Center(
                child: SleekCircularSlider(
                  min: 0,
                  max: 100,
                  initialValue: weatherDataCurrent.current.humidity!.toDouble(),
                  appearance: CircularSliderAppearance(
                    customWidths: CustomSliderWidths(
                      handlerSize: 0,
                      trackWidth: 6,
                      progressBarWidth: 6
                    ),
                    infoProperties: InfoProperties(
                      bottomLabelText: "Humidity",
                      bottomLabelStyle: const TextStyle(letterSpacing: 0.1, fontSize: 14, height: 1.5)
                    ),
                    animationEnabled: true,
                    size: 100,
                    customColors: CustomSliderColors(
                      hideShadow: true,
                      trackColor: CupertinoColors.systemGrey.withAlpha(50),
                      progressBarColors: [
                        CupertinoColors.systemGrey,
                        CupertinoColors.systemGrey4
                      ]
                    )
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "Feels Like ",
                          style: TextStyle(
                            fontSize: 14,
                            height: 0.8,
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.w400
                          )
                        ),
                        TextSpan(
                          text: "${weatherDataCurrent.current.feelsLike}",
                          style: const TextStyle(
                            fontSize: 14,
                            height: 0.8,
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.w400
                          )
                        )
                      ]
                    ),
                  ),
                  Container(
                    height: 25,
                    margin: const EdgeInsets.only(left: 40, right: 40),
                    width: 1,
                    color: CupertinoColors.systemGrey,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "UV Index ",
                          style: TextStyle(
                            fontSize: 14,
                            height: 0.8,
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.w400
                          )
                        ),
                        TextSpan(
                          text: "${weatherDataCurrent.current.uvIndex}",
                          style: const TextStyle(
                            fontSize: 14,
                            height: 0.8,
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.w400
                          )
                        )
                      ]
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}