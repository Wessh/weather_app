import 'package:flutter/material.dart';
import 'package:weather_app/src/components/home_card_component.dart';
import 'package:weather_app/src/controllers/weather_controller.dart';
import 'package:weather_app/src/repositories/weather_repository.dart';
import 'package:weather_app/src/services/dio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final WeatherController _controller =
      WeatherController(WeatherRepository(service: DioService().getDio()));
  var city = 'São Luis';
  @override
  void initState() {
    super.initState();
    setState(() {
      _controller.getWeather(city);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ValueListenableBuilder(
            valueListenable: _controller.weather,
            builder: (_, weather, __) {
              return weather.cityName == ''
                  ? const CircularProgressIndicator()
                  : HomeCardComponent(weather: weather);
            },
          ),
        ),
      ),
    );
  }
}
