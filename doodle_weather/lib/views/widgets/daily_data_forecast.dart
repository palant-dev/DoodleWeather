import 'package:doodle_weather/models/api_response_related/weather_data_daily.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

/// This Widget displays forecast for the next 7 days starting from [.now()]:
/// 
///  - Day of the week: expressed in percentage
///  - Min/Max temperature: expressed in celsius degree
class DailyDataForecast extends StatelessWidget {
  final WeatherDataDaily weatherDataDaily;
  const DailyDataForecast({Key? key, required this.weatherDataDaily}) :super(key: key);

  String getDay(final day) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(day * 1000);
    final formattedDate = DateFormat('EEE').format(time);
    return formattedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: CupertinoColors.white.withAlpha(200),
      ),
      child: Column(
        children: [
          SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: weatherDataDaily.daily.length > 7 ? 7 : weatherDataDaily.daily.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 40,
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 80,
                      child: Text(
                        getDay(weatherDataDaily.daily[index].dayTime).toUpperCase(), 
                        style: const TextStyle(
                          color: CupertinoColors.black, fontSize: 13
                          ),
                        ),
                    ),
                    Text(
                      "${weatherDataDaily.daily[index].temp!.min}°/${weatherDataDaily.daily[index].temp!.max}°"
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                color: CupertinoColors.systemGrey4.withAlpha(400),
              )
            ],
          );
        },
      ),  
    )
  ]),
  );
  }
}

  