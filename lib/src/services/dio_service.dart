import 'package:dio/dio.dart';
import 'package:weather_app/src/services/i_dio_service.dart';

class DioService implements IDioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.openweathermap.org',
      ),
    );
  }
}
