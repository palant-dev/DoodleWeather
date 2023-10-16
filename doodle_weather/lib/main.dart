import 'package:doodle_weather/views/home_view.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const CupertinoApp(
      home: HomeView(),
      debugShowCheckedModeBanner: false,
      title: 'Doodle Weather',
    );
  }
}