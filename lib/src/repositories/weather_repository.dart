import 'package:weather_app/src/models/weather_model.dart';
import 'package:weather_app/src/repositories/i_weather_repository.dart';

import '../utils/api.utils.dart';

class WeatherRepository implements IWeatherRepository {
  final service;

  WeatherRepository({required this.service});

  @override
  Future<WeatherModel> getWeatherName({required city}) async {
    var response = await service
        .get('${API.REQUEST_FORECAST}&q=$city&units=metric&lang=pt_br&cnt=7');
    var data = WeatherModel.fromJson(response.data);

    return data;
  }

  @override
  Future<WeatherModel> getWeatherPosition({required lat, required lon}) async {
    var response = await service.get(API.REQUEST_FORECAST);
    var data = WeatherModel.fromJson(response.data);
    return data;
  }
}
