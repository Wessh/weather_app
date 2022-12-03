// ignore_for_file: constant_identifier_names

import 'package:weather_app/src/utils/key.dart';

class API {
  static const REQUEST_FORECAST = '/data/2.5/forecast?appid=$API_KEY';

  static String REQUEST_ICON({ico}) {
    return 'http://openweathermap.org/img/wn/$ico@2x.png';
  }

  static String REQUEST_TEST({unit, lang, days}) {
    return '/data/2.5/forecast?appid=$API_KEY&units=$unit&lang$lang&cnt=$days';
  }
}
