import 'dart:developer';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/src/controllers/weather_controller.dart';
import 'package:weather_app/src/repositories/weather_repository.dart';

class MockWeather extends Mock implements WeatherRepository {}

void main() {
  test('weather repository ...', () async {
    final weatherMock = MockWeather();
    WeatherController controller = WeatherController(weatherMock);

    var city = 'São Luis';

    await controller.getWeather(city);

    log(controller.weather.value.cityName);
    for (var weather in controller.weather.value.weatherList!) {
      log(
          name: 'Weather log',
          'Temp: ${weather.temp}\nWeather: ${weather.weather[0]['description']}\nFeelsLike: ${weather.feelsLike}\n${weather.dtTxt}');
    }
  });
}
