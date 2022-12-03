import 'package:weather_app/src/models/weather_model.dart';

abstract class IWeatherRepository {
  Future<WeatherModel> getWeatherName({required city});
  Future<WeatherModel> getWeatherPosition({required lat, required lon});
}
