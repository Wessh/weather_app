import 'package:flutter/cupertino.dart';
import 'package:weather_app/src/models/weather_model.dart';
import 'package:weather_app/src/repositories/i_weather_repository.dart';

class WeatherController {
  final IWeatherRepository _iWeatherRepository;

  WeatherController(this._iWeatherRepository);

  ValueNotifier<WeatherModel> weather =
      ValueNotifier<WeatherModel>(WeatherModel());

  getWeather(String city) async {
    weather.value = await _iWeatherRepository.getWeatherName(city: city);
  }
}
