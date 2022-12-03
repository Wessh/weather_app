import 'package:flutter/material.dart';
import 'package:weather_app/src/models/weather_model.dart';
import 'package:weather_app/src/widgets/custom_text_widget.dart';

class HomeCardComponent extends StatelessWidget {
  final WeatherModel weather;
  const HomeCardComponent({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: 250,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'http://openweathermap.org/img/wn/${weather.weatherList![0].weather[0]['icon']}@2x.png',
                  filterQuality: FilterQuality.medium,
                  fit: BoxFit.cover,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: CustomTextWidget(
                        data: weather.cityName,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CustomTextWidget(
                      data: weather.country,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    CustomTextWidget(
                      data:
                          '${weather.weatherList![0].weather[0]['description']}',
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                CustomTextWidget(
                  data: '${weather.weatherList![0].temp.ceil()}º',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            Row(
              children: [
                CustomTextWidget(
                    data: ' Min: ${weather.weatherList![0].tempMin}'),
                const SizedBox(
                  width: 8,
                ),
                CustomTextWidget(
                    data: 'Max ${weather.weatherList![0].tempMax}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
