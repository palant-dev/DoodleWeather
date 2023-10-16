# Doodle weather
![13d 11 09 13](https://github.com/palant-dev/DoodleWeather/assets/113528707/cb6afdd7-e8c1-45c1-a9b6-efe49ee2997a)

Doodle Weather is a simple weather app built using Flutter. It provides weather information based on your current location.

## **Why "Doodle Weather"?**

Doodle Weather gets its name from its unique visual approach to representing weather conditions. Instead of conventional icons, this app uses hand-drawn doodles to depict different weather states. This adds a touch of creativity and playfulness to the user experience.

The app leverages the OpenWeatherMap API to fetch accurate and up-to-date weather data. By combining this reliable data source with a whimsical visual style, Doodle Weather offers a fun and informative way to stay updated on the weather.

## **Features**

- Fetches weather data using the OpenWeatherMap API.
- Displays current weather, daily forecast, and comfort level details.
- Sleek circular slider for visualising humidity.

## State Management with GetX

This app utilizes the GetX package for state management. GetX is a powerful state management library for Flutter that simplifies the process of managing application state.

### Why GetX?

- **Simplicity**: GetX provides a simple and intuitive syntax for managing state without the boilerplate code associated with traditional state management solutions.

- **Reactivity**: GetX offers reactive programming paradigms that automatically update the UI whenever the underlying data changes.

- **Dependency Injection**: GetX comes with a powerful dependency injection system that allows for easy and efficient management of dependencies.

- **Performance**: GetX is highly performant, making it suitable for both small and large-scale applications.

- **Lightweight**: GetX is lightweight and has minimal impact on app size and performance.

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

## **Screenshots and demo**

https://github.com/palant-dev/DoodleWeather/assets/113528707/d2b95429-d6b6-4fee-896e-fd7d4631fbbd

https://github.com/palant-dev/DoodleWeather/assets/113528707/7aec07b5-0bc3-465f-bc9c-0479f1a29eb8

https://github.com/palant-dev/DoodleWeather/assets/113528707/1aaa3e6e-fa72-4aca-8d18-92956a27cb99

## **Contributing**

Feel free to open issues or pull requests to contribute to this project.

## **License**

This project is licensed under the [MIT License](https://chat.openai.com/c/LICENSE).
