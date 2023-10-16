import 'package:doodle_weather/utils/api/fetch_weather.dart';
import 'package:doodle_weather/models/weather_data_bundle.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

/// This is the controller class responsible for managing global application state.
class GlobalController extends GetxController {
  final RxBool _isLoading = true.obs;
  final RxDouble _latitude = 0.0.obs;
  final RxDouble _longitude = 0.0.obs;
  final RxInt _currentIndex = 0.obs;

  RxBool checkLoading() => _isLoading;
  RxDouble fetchLatitude() => _latitude;
  RxDouble fetchLongitude() => _longitude;

  final weatherData = WeatherDataBundle().obs;

  WeatherDataBundle fetchData() {
    return weatherData.value;
  }

  @override
  void onInit() {
    if (_isLoading.isTrue) {
      fetchLocation();
    } else {
      fetchIndex();
    }
    super.onInit();
  }

  /// Fetches the user's location.
  ///
  /// Throws an error if location services are not enabled or if the user denies location access.
  /// Returns the position if successful.
  fetchLocation() async {
    bool isServiceEnabled;
    LocationPermission locationPermission;

    isServiceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!isServiceEnabled) {
      return Future.error("Location not enabled");
    }

    locationPermission = await Geolocator.checkPermission();

    if (locationPermission == LocationPermission.deniedForever) {
      return Future.error("Location are denied forever");
    } else if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        return Future.error("Location permission is denied");
      }
    }
    

      return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((value) {
        _latitude.value = value.latitude;
        _longitude.value = value.longitude;

        return FetchWeatherAPI().processData(value.latitude, value.longitude)
        .then((value) {
          weatherData.value = value;
          _isLoading.value = false;
        });
      });
  }

  RxInt fetchIndex() {
    return _currentIndex;
  }
}