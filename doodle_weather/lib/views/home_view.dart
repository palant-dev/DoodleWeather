import 'package:doodle_weather/controllers/global_controller.dart';
import 'package:doodle_weather/views/widgets/comfort_level.dart';
import 'package:doodle_weather/views/widgets/daily_data_forecast.dart';
import 'package:doodle_weather/views/widgets/header_widget.dart';
import 'package:doodle_weather/views/widgets/loading_screen.dart';
import 'package:doodle_weather/views/widgets/temperature_sky_widget.dart';
import 'package:doodle_weather/views/widgets/today_date_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

/// This widget display the main view of the app:
/// 
///  - [HeaderWidget()]: name of the city 
///  - [TemperatureSkyWidget()]: current weather like the temperature and related icon
///  - [TodayDateWidget()]: the date of today formatted 
///  - [ComfortLevel()]: data about humidity, perceived temperature and uv index
///  - [DailyDataForecast()]: forecasts of next seven days
/// 
/// All the data are mainly managed by the controller [GlobalController] that acts as only source of truth for all the required data.
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalController globalController = Get.put(GlobalController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: 
        Obx(() => globalController.checkLoading().value
        ? const Center(
          child: LoadingScreen()
        ) 
        : 
        Center(
            child: ListView( 
              children:  [
                const SizedBox(
                  height: 20,
                ),
                // Displays the name of the city gathered from latitude nad longitude data
                const HeaderWidget(),
                const SizedBox(
                  height: 16,
                ),
                // Diplays the state of the current weather like the temperature and a graphic representation of the sky state
                TemperatureSkyWidget(
                  weatherDataCurrent: globalController.fetchData().fetchCurrentWeather()
                ),
                const SizedBox(
                  height: 12,
                ),
                // Displays the date of today formatted as "MMMM d, EEEE"
                const TodayDateWidget(),
                const SizedBox(
                  height: 40,
                ),
                // Displays the data about humidity, perceived temperature and uv index
                ComfortLevel(weatherDataCurrent: globalController.fetchData().fetchCurrentWeather()),
                // Displays the data for the next seven days in a scrollable list
                DailyDataForecast(
                      weatherDataDaily: globalController.fetchData().fetchDailyWeather(),
                ),
              ],
            ),
        ))
      )
    );
  }
}