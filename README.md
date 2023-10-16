# Doodle weather

Doodle Weather is a simple weather app built using Flutter. It provides weather information based on your current location.

## **Why "Doodle Weather"?**

Doodle Weather gets its name from its unique visual approach to representing weather conditions. Instead of conventional icons, this app uses hand-drawn doodles to depict different weather states. This adds a touch of creativity and playfulness to the user experience.

The app leverages the OpenWeatherMap API to fetch accurate and up-to-date weather data. By combining this reliable data source with a whimsical visual style, Doodle Weather offers a fun and informative way to stay updated on the weather.

## **Features**

- Fetches weather data using the OpenWeatherMap API.
- Displays current weather, daily forecast, and comfort level details.
- Sleek circular slider for visualising humidity.

## **Dependencies**

- [cupertino_icons](https://pub.dev/packages/cupertino_icons): ^1.0.2
- [http](https://pub.dev/packages/http): ^1.1.0
- [geolocator](https://pub.dev/packages/geolocator): ^10.1.0
- [geocoding](https://pub.dev/packages/geocoding): ^2.1.1
- [get](https://pub.dev/packages/get): ^4.6.6
- [intl](https://pub.dev/packages/intl): ^0.18.1
- [sleek_circular_slider](https://pub.dev/packages/sleek_circular_slider): ^2.0.1

## **Usage**

1. Ensure you have Flutter and Dart SDK installed.
2. Clone the repository.
3. Run `flutter pub get` to install dependencies.
4. Create your own API key on the [OpenWeather website](https://openweathermap.org/) and add it inside the `utils/api/api_key.dart` file. It should look like this:

```dart
// utils/api/api_key.dart

const apiKey = 'YOUR_API_KEY_HERE';
```

## **Screenshots**

Include some screenshots of the app in action.

## **Contributing**

Feel free to open issues or pull requests to contribute to this project.

## **License**

This project is licensed under the [MIT License](https://chat.openai.com/c/LICENSE).
