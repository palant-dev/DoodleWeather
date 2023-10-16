import 'package:flutter/cupertino.dart';

/// This widget is a loading screen shown to the user while fetching information from openweather
class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
        "assets/icons/loading_screen.gif",
        height: 200,
        width: 200,
      ),
      const Text(
        "Loading weather data"
      )
    ],  
  );
  }
}