import 'package:weather_app/src/models/forecast_model.dart';

class WeatherModel {
  /// city
  final int cityId;
  final String cityName;
  final String cityLon;
  final String cityLat;
  final String country;
  // weather
  List<ForecastModel>? weatherList;

  WeatherModel({
    this.cityId = 0,
    this.cityName = '',
    this.cityLon = '',
    this.cityLat = '',
    this.country = '',
    this.weatherList,
  });

  factory WeatherModel.fromJson(Map json) => WeatherModel(
        cityId: json['city']['id'],
        cityName: json['city']['name'],
        cityLon: json['city']['coord']['lon'].toString(),
        cityLat: json['city']['coord']['lat'].toString(),
        country: json['city']['country'],
        weatherList: json["list"]
            .map((e) => ForecastModel.fromJson(e))
            .toList()
            .cast<ForecastModel>(),
      );
}
