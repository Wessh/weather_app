class ForecastModel {
  /// main
  final num temp;
  final num feelsLike;
  final num tempMin;
  final num tempMax;
  final int humidity;

  /// weather
  final dynamic weather;

  //wind
  final num speedWind;
  //date
  final String dtTxt;

  ForecastModel({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.humidity,
    required this.weather,
    required this.speedWind,
    required this.dtTxt,
  });

  factory ForecastModel.fromJson(Map json) => ForecastModel(
        temp: json['main']["temp"],
        feelsLike: json['main']["feels_like"],
        tempMin: json['main']["temp_min"],
        tempMax: json['main']["temp_max"],
        humidity: json['main']["humidity"],
        weather: json["weather"],
        speedWind: json['wind']["speed"],
        dtTxt: json['dt_txt'],
      );
}
